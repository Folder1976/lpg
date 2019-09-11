<?php
	
	class ControllerAccountUniversalform extends Controller {
		private $error = array();
						
		public function podpiska() {
			$json = array();
					
					
			$email = $this->config->get('config_email');
			$email = 'folder.list@gmail.com';
		
			if (($this->request->server['REQUEST_METHOD'] == 'POST') AND !isset($json['error'])){ // && $this->validate()) {
				
				
				$subject = $this->config->get('config_owner');
				$message = '';
				
				foreach($this->request->post as $name => $value){
					$message  .= $name .': '.$value. "\n\n";
				}
				
				echo "<pre>";print_r(var_dump($message));echo "</pre>";
				
				
					$mail = new Mail();
					$mail->protocol = $this->config->get('config_mail_protocol');
					$mail->parameter = $this->config->get('config_mail_parameter');
					$mail->smtp_hostname = $this->config->get('config_mail_smtp_hostname');
					$mail->smtp_username = $this->config->get('config_mail_smtp_username');
					$mail->smtp_password = html_entity_decode($this->config->get('config_mail_smtp_password'), ENT_QUOTES, 'UTF-8');
					$mail->smtp_port = $this->config->get('config_mail_smtp_port');
					$mail->smtp_timeout = $this->config->get('config_mail_smtp_timeout');
					
					$mail->setTo($email);
					$mail->setFrom($this->config->get('config_email'));
					$mail->setSender(html_entity_decode($this->config->get('config_name'), ENT_QUOTES, 'UTF-8'));
					$mail->setSubject(html_entity_decode($subject, ENT_QUOTES, 'UTF-8'));
					$mail->setText(html_entity_decode($message, ENT_QUOTES, 'UTF-8'));
					$mail->send();
					
					$json['success'] = 'Спасибо за Ваше обращение, мы скоро свяжемся с Вами.';
				
				
				}else{
				//$json['error'] = $this->error;
			}
			
			$this->response->addHeader('Content-Type: application/json');
			$this->response->setOutput(json_encode($json));
		}
		
		
	}	
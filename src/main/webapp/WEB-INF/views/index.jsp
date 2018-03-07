<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Spring Rabbit MQ Sample Application</title>
    <link href='resources/vendor/bootstrap/dist/css/bootstrap.min.css' rel='stylesheet' type='text/css' />
</head>
<body>
    <div class="col-md-offset-1 col-md-10">
        <div class="page-header">
            <h1>Spring MVC RabbitMQ Sample <br/><small></h1>
        </div>
        <form action = "/SpringRabbitMQ/sendMessage" method = "POST">
        <div class="form-group">
            <textarea class="form-control input-sm" cols="20" rows="5" id="message" placeholder="Enter your message"></textarea>
        </div>
        <br/>
        <div class="form-group">
            <button class="btn btn-sm btn-primary" id="sendMessage">Send message</button>
        </div>
        </form>
    </div>
</body>

<script src="resources/vendor/jquery/dist/jquery.min.js"></script>
<script src="resources/vendor/bootstrap/dist/js/bootstrap.min.js"></script>
<script src="resources/vendor/notifyjs/dist/notify.js"></script>

</html>

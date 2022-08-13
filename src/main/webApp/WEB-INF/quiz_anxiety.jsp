<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Anxiety Quiz</title>
    <link rel="stylesheet" href="assets/css/style_anxiety.css">
    <!-- FontAweome CDN Link for Icons-->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
    <link rel="icon" href="images/logo1.jpg" type="image/icon type">
</head>
<body>
    <!-- start Quiz button -->
    <div class="start_btn"><button>Start Quiz</button></div>

    <!-- Quiz Box -->
    <div class="quiz_box">
        <header>
            <div class="title">Anxiety</div>
        </header>
        <section>
            <div class="que_text">
                <!-- Here I've inserted question from JavaScript -->
            </div>
            <div class="option_list">
                <!-- Here I've inserted options from JavaScript -->
            </div>
        </section>

        <!-- footer of Quiz Box -->
        <footer>
            <div class="total_que">
                <!-- Here I've inserted Question Count Number from JavaScript -->
            </div>
            <button class="next_btn">Next</button>
        </footer>
    </div>

    <!-- Result Box -->
    <div class="result_box">
        <div class="icon">
            <div class="value-result_box">0%</div>
        </div>

        <!-- <div class="complete_text">You've completed the Quiz!</div> -->
        <div class="score_text">
            <!-- Here I've inserted Score Result from JavaScript -->
        </div>
        <div class="buttons">
		<a href="/home"><button id="restart" class="restart">Home Page</button></a>
            <a href="/docdetail"><button id="quit" class="quit">Find therapist</button></a>
        </div>
    </div>

    <!-- Inside this JavaScript file I've inserted Questions and Options only -->
    <script src="assets/js_anxiety/questions.js"></script>

    <!-- Inside this JavaScript file I've coded all Quiz Codes -->
    <script src="assets/js_anxiety/script1.js"></script>

</body>
</html>

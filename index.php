    <?php
        require "./includes/data-collector.php";
    ?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="css/style.css"/>
    <link rel="stylesheet" href="./css/index.css"/>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    <!-- <script src="js/main.js"></script> -->
</head>

    <?php 
/*         include "question.php";
        include "result.php"; */
        include "./includes/header.php";
    ?>

    <body>

        <div class="wrapper">
            <div class="imag-quest">
                <img src="img/question-faq-quora-methodology.png" alt="?? im ?">
            </div>
            <div class="container1">
            <header>
                <h1>Willkommen zum Quiz!</h1>
                <p>Hier ist eine kurze Anleitung, wie das Quiz funktioniert:</p>
            </header>
            <section>
                <h2>Quiz Ablauf</h2>
                Sind Sie bereit, Ihr Wissen auf die Probe zu stellen und dabei Spaß zu haben?<br>
                Unser interaktives Trivial-Quiz bietet Ihnen die Möglichkeit, aus verschiedenen Kategorien zu wählen und Ihre Fähigkeiten zu zeigen.<br>
                Egal, ob Sie ein Biologie-Guru, ein Popkultur-Experte oder ein Allgemeinwissens-As sind, hier finden Sie die perfekte Herausforderung.
            </section>
            <section>
                <h2>Tipps</h2>
                <ul>
                    <li>Wählen Sie eine Kategorie Ihrer Wahl aus.</li>
                    <li>Beantworten Sie so viele Fragen wie möglich, um Punkte zu sammeln.</li>
                    <li>Jede richtige Antwort bringt Sie näher zum Titel des Trivial-Meisters.</li>
                    <li>Sie können sich Zeit nehmen oder im Eiltempo spielen – ganz wie Sie möchten.</li>
                    <li>Wenn Sie sich bei einer Frage nicht sicher sind, rate ruhig!</li>
                </ul>
            </section>
            <section>
                <h2>Viel Spaß!</h2>
                <p>Jetzt, da Sie wissen, wie das Quiz funktioniert, wünschen wir Ihnen viel Spaß und Erfolg beim Beantworten der Fragen.</p>
            </section>
            </div>
        </div>

        <div class="wrapper diagonal-wrapper">
            <div class="container2">
                <form action="/action_page.php">
                        <div class="dropdown">
                            <button type="button" class="dropdown-button btn" data-bs-toggle="dropdown">
                                Select Categorie
                            </button>
                            <ul class="dropdown-menu" id="topic">
                                    <li><a class="topic_1" href="language">Language</a></li>
                                    <li><a class="topic_2" href="animals in switzerland">Wild-Life Swiss</a></li>
                                    <li><a class="topic_3" href="switzerland">Switzerland</a></li>
                                    <li><a class="topic_4" href="harmonicas">Mundharmonika</a></li>
                                    <li><a class="topic_5" href="e-guitar">E-Guitar</a></li>
                                    <li><a class="topic_6" href="anatomy">Anatomy</a></li>
                                    <li><a class="topic_7" href="football">Football</a></li>
                                </ul>
                        </div>
                        <form action="/action_page.php">
                            <label for="quantity">Quantity:</label>
                            <input type="number" id="quantity" name="quantity" min="0" max="15" step="1" value="">
                            <input type="submit" value="Submit">
                        </form>
                    </div>
                </form>
            </div>
        </div>

    </body>

    <?php
        include "./includes/footer.php";
    ?>

</html>
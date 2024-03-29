<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>

    <title>home</title>


    <style>
        section {

            background-color: aqua;
            width: 59vw;
            height: 31vw;
            display: grid;
            grid-template-columns: auto auto;
            row-gap: 30px;
            column-gap: 40px;
            padding: 45px;

        }

        #a {
            width: 270px;
            height: 300px;
            /* background-color:green; */
            margin: 15px;
                
        }

        #b {

            width: 317px;
            height: 428px;
            background-color: white;
            margin: 15px;
            margin-top: 15px;
        }

        img {

            height: 428px;
            width: 400px;
            padding: 0px;

        }

        .x {
            text-align: center;
        }

        .z {
            background-color: white;
            width: 22vw;
            height: 2vw;
            display: grid;
            grid-template-columns: auto auto;
            row-gap: 3px;
            column-gap: 6px;
            padding: 5px;
            text-align: center;

        }

        #c1 {
            background-color: black;
            color: azure;
            padding: 5px;
        }

        #c2 {
            background-color: aqua;
            color: azure;
            padding: 7px;
        }


        #y {
            color: aqua;
            position: fixed;
            margin: 8px;



        }

        #sa {
            margin: 22px;
        }
    </style>


</head>

<body>
    <section>
        <div id="a">

            <h1 id="y">Photography</h1>



            <img src="./pic.jpg" alt="">
        </div>

        <div id="b">
            <h1 class="x" style="color: aqua;">Registration</h1>
            <h4 class="x">Click For Your Shoot</h4>
            <div id="sa">
                <label>Name</label><input type="text" placeholder="Enter Name"><br><br>
                <label>Email</label><input type="email" placeholder="Enter Email"><br>
                <div>
                    <label>Gender</label>
                    <input type="radio" name="gender" value="Male"><label>Male</label>
                    <input type="radio" name="gender" value="Female"><label>Female</label>

                </div> <br>
                <label>Date Of Birth</label> <input type="date" placeholder="Fill DOB"> <br><br>
                <label>City</label> <input type="text" placeholder="Enter City"><br><br>
                <label>Country</label> <input type="text" placeholder="Enter Country"><br><br>
                <div>
                    <label for="">Subscription</label>
                    <input type="radio" name="gender" value="Male"><label>Bronze</label>
                    <input type="radio" name="gender" value="Female"><label>Silver</label>

                    <input type="radio" name="gender" value="Female"><label>Gold</label>
                </div>
            </div><br>
             <section class="z">
                <div id="c1">Cancel</div>
                <div id="c2">Conform</div>
            </section>
        </div>
      
    </section>

    
</body>

</html>
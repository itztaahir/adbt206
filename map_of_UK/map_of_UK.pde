PImage img;
String message;

void setup () {
  size (1186, 1390);
  img = loadImage("united-kingdom-map.jpg");
  message = "unknown";
}

void draw() {
  background(0);
  image(img, 0, 0 ); 

  if (declareCity(940, 1165) < 20 ) { // London 
    message = "• London has a population of 9,304,000" + 
      "\n" + "• London is one of three cities most survielled with around 500,000 CCTV cameras" +
      "\n" + "• 44% of Londons populations consists of ethnic minorities" +
      "\n" + "• Over 300 languages are spoken in London";
      
  } else if (dist(mouseX, mouseY, 670, 1160) < 20) { // Cardiff
    message = "• Cardiff has a population of 355,145 - census 2011" + 
      "\n" + "• 8.4% of the population consists of ethnic minorities" +
      "\n" + "• Cardiff bay is the largest water front project in Europe and is one of the main tourist attractions" +
      "\n" + "• Cardiff sees over 18 million tourists a year which is great for locals!";
 
} else if (dist(mouseX, mouseY, 670, 470) < 20) { // Edinburgh 
     message = "• Edinburgh has a population of 482,805 - census 2011" + 
      "\n" + "• 8% of the population consists of ethnic minorities" +
      "\n" + "• Edinburgh castle is built on an extinct volcano" +
      "\n" + "• Edinburgh has 112 parks and more trees per head of population than any other city in the UK";
 
} else if (dist(mouseX, mouseY, 425, 690) < 20) { // Belfast 
     message = "• Belfast has a population of 280,211 - census 2011" + 
      "\n" + "• 3.3% of the population consists of ethnic minorities" +
      "\n" + "• Belfast was the birthplace of the RMS Titanic which is historically huge!" +
      "\n" + "• Belfast has 3000 acres of parks";
  
} else if (dist(mouseX, mouseY, 702, 873) < 20) { // Liverpool 
     message = "• Liverpool has a population of 552,267 - census 2011" + 
      "\n" + "• 9% of the population consists of ethnic minorities" +
      "\n" + "• Home of the best football team in the world and current champions - Liverpool FC" +
      "\n" + "• Did you know liverpools star player Mo salah reduced islamaphobia by 18.9% in Liverpool!" +
      "\n" + "• Liverpool is the home of one of the most iconic bands in the world - The Beatles";

} else if (dist(mouseX, mouseY, 767, 869) < 20) { // Manchester 
     message = "• Manchester has a population of 547,627 - census 2011" + 
      "\n" + "• 33.7% of the population consists of ethnic minorities" +
      "\n" + "• Home of the 2 worst football teams in the world  - Manchester United FC, Manchester City FC" +
      "\n" + "• Manchester was the first city to start the Industrial Revolution - This changed the UK economically and socially ";

} else message = "unknown";

  displayWindow();
}

float declareCity(float x, float y) {
  return dist(mouseX, mouseY, x, y);
}

void displayWindow() {

  if (!message.equals("unknown")) {
    rectMode(CENTER);
    fill(#FFFFFF, 210);

    rect(mouseX, mouseY, 500, 470);

    fill(0);
    textSize(24);
    textAlign(CENTER);
    text(message, mouseX, mouseY, 500, 470);
  }
}

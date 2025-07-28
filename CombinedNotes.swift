// how to make variable
var name = "Hong Jiang" 

"""
String - the default/ basically words
Int - Integer/ Whole numbers
Float - 32 Bit/ decimal
Double - 64 bit/ decimal
Boolean - True or False
"""
// for Xcode
Text("Hello world") //  shows a text on the iphone preview screen

// Modifiers
// MARK: - Font & Style Modifiers
Text("Hello World")
    .font(.largeTitle)              // Set predefined font style: .title, .headline, .body, etc.
    .font(.system(size: 24))        // Custom font size
    .fontWeight(.bold)              // Set font weight: .ultraLight, .light, .regular, .medium, .semibold, .bold, .heavy, .black
    .bold()                         // Shortcut for bold
    .italic()                       // Italicizes the text
    .underline()                    // Underlines the text
    .underline(true, color: .red)   // Underline with custom color
    .strikethrough()                // Adds a strikethrough
    .strikethrough(true, color: .gray) // Strikethrough with color

// MARK: - Color & Opacity
Text("Hello")
    .foregroundColor(.blue)         // Text color
    .opacity(0.5)                   // Text opacity

// MARK: - Alignment & Layout
Text("Multiline\nText")
    .multilineTextAlignment(.center)   // Text alignment: .leading, .center, .trailing
    .lineLimit(2)                      // Maximum number of lines
    .lineSpacing(10)                   // Spacing between lines
    .truncationMode(.tail)            // How to truncate: .head, .middle, .tail
    .frame(width: 200, height: 100)   // Set frame size

// MARK: - Font Customization
Text("Custom Font")
    .font(.custom("Helvetica Neue", size: 18))  // Use custom font

// MARK: - Backgrounds & Effects
Text("Styled")
    .background(Color.yellow)         // Background color behind text
    .padding()                        // Add padding around text
    .background(RoundedRectangle(cornerRadius: 10).fill(Color.gray)) // Background shape

// MARK: - Animations & Effects
Text("Animated")
    .rotationEffect(.degrees(15))     // Rotate text
    .scaleEffect(1.2)                 // Scale text
    .shadow(color: .black, radius: 2, x: 0, y: 2) // Add shadow

// MARK: - Accessibility
Text("Accessible Text")
    .accessibilityLabel("Accessible version of text") // Screen reader label

// MARK: - ⛓️ Combining Modifiers
Text("Styled Combo")
    .font(.title)
    .foregroundColor(.purple)
    .bold()
    .underline()
    .padding()
    .background(Color.yellow)

// Image 
"""
Drag the image into 'Assets' folder
Paste the name into teh function Image(), enclosed in " "
"""

Image("Aura")

// Modifiers
// MARK: - Image Basics
Image("exampleImage")                    // Load an image from assets
Image(systemName: "star.fill")          // Use SF Symbol

// MARK: - Resizing & Scaling
Image("exampleImage")
    .resizable()                        // Make image resizable
    .aspectRatio(contentMode: .fit)     // Fit within frame (or .fill)
    .scaledToFit()                      // Shortcut for aspectRatio with .fit
    .scaledToFill()                     // Shortcut for aspectRatio with .fill
    .frame(width: 100, height: 100)     // Set image frame

// MARK: - Clipping & Masking
Image("exampleImage")
    .clipShape(Circle())                // Clip to shape (e.g., Circle, RoundedRectangle)
    .cornerRadius(10)                   // Rounded corners
    .mask(Text("MASK"))                 // Use another view as a mask

// MARK: - Borders & Overlays
Image("exampleImage")
    .overlay(Text("Overlay"), alignment: .bottom)   // Overlay another view
    .border(Color.red, width: 2)                    // Border around image
    .background(Color.gray)                         // Background behind image

// MARK: - Effects & Filters
Image("exampleImage")
    .opacity(0.7)                       // Make image transparent
    .brightness(0.2)                    // Brighten image
    .contrast(1.5)                      // Increase contrast
    .saturation(2.0)                    // Saturate colors
    .blur(radius: 5)                    // Apply blur
    .shadow(radius: 10)                // Add shadow

// MARK: - Animation & Transformation
Image("exampleImage")
    .rotationEffect(.degrees(15))       // Rotate image
    .scaleEffect(1.2)                   // Scale image
    .offset(x: 10, y: 5)                // Offset image position
    .animation(.easeInOut)             // Animate changes

// MARK: - Accessibility
Image("exampleImage")
    .accessibilityLabel("A description of the image") // Label for screen readers
    .accessibilityHidden(false)        // Whether it's visible to accessibility

// MARK: - Combining Multiple Modifiers
Image("exampleImage")
    .resizable()
    .scaledToFit()
    .frame(width: 150)
    .cornerRadius(12)
    .shadow(radius: 5)
    .overlay(
        RoundedRectangle(cornerRadius: 12)
            .stroke(Color.blue, lineWidth: 2)
    )

// Stacks
"""
HStack - Aligns elements beside each other
VStack - Aligns elements vertically in a column
ZStack - Stacks the elements to top of one another, the top element should be coded at the top and vice versa
"""

// Shapes and their modifiers
// MARK: - Basic Shapes
Circle()
Rectangle()
RoundedRectangle(cornerRadius: 10)
Ellipse()
Capsule()
Path { path in                         // Custom shape using Path
    path.move(to: CGPoint(x: 0, y: 0))
    path.addLine(to: CGPoint(x: 100, y: 0))
    path.addLine(to: CGPoint(x: 100, y: 100))
    path.closeSubpath()
}

// MARK: - Shape Styling
Circle()
    .fill(Color.blue)                 // Fill with color
RoundedRectangle(cornerRadius: 20)
    .stroke(Color.red, lineWidth: 4)  // Outline with color and thickness
Ellipse()
    .strokeBorder(Color.green, lineWidth: 3) // Stroke inner edge only

// MARK: - Gradient Fill
Capsule()
    .fill(LinearGradient(              // Linear gradient fill
        gradient: Gradient(colors: [.red, .orange]),
        startPoint: .top,
        endPoint: .bottom
    ))

Rectangle()
    .fill(RadialGradient(             // Radial gradient fill
        gradient: Gradient(colors: [.purple, .black]),
        center: .center,
        startRadius: 10,
        endRadius: 100
    ))

RoundedRectangle(cornerRadius: 20)
    .fill(AngularGradient(            // Angular gradient fill
        gradient: Gradient(colors: [.blue, .green]),
        center: .center
    ))

// MARK: - Size & Layout
Circle()
    .frame(width: 100, height: 100)   // Set shape size
    .padding(10)                      // Add padding around shape

// MARK: - Clipping & Masking
Image("example")
    .clipShape(Circle())              // Clip image to shape
Text("Masked")
    .mask(RoundedRectangle(cornerRadius: 12)) // Mask text with shape

// MARK: - Effects
Rectangle()
    .shadow(color: .gray, radius: 5, x: 2, y: 2) // Add shadow
    .opacity(0.8)                                // Set transparency
    .rotationEffect(.degrees(45))                // Rotate shape
    .scaleEffect(1.2)                            // Scale shape

// MARK: - Shape with Overlay
Circle()
    .fill(Color.pink)
    .frame(width: 120, height: 120)
    .overlay(Text("Hello").foregroundColor(.white)) // Overlay text on shape

// MARK: - Custom Shape with Shape Protocol
struct Triangle: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.move(to: CGPoint(x: rect.midX, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY))
        path.closeSubpath()
        return path
    }
}
Triangle()
    .fill(Color.green)

// Data types
"""
Character - A 16-bit unicode character - "Fried"
String - Represents textual data - "Hello world"
Int (Integer) - An integer number - 6
Float - Decimal with max char limit of 32
Double (use this instead of floats) - Deciaml with max char limit of 64 - 2.422342412414
Bool - Any 2 values - True or False
"""

// Math - only works for integers, integer interpolated doubles and floats 
var number0 = 1
var number1 = 2
var output = number0 * number1
var output1 = number0 / number1
var output2 = number0 + number1
var output3 = number0 - number1 
print(output)
print(output1)
print(output2)
print(output3)

// Booleans - True or false 
var isTall = true
var isShort = false

// If-else
if number0 == 1 
{
  print("yay")
} else 
{
  print("boo")
}

var condition = true
while condition
{
  print("i love ice cream")
  // check if condition is true
  // if true: continue excuting this code until hte condition is false
}

for index in 0...5
{
  // exceute this code 10 times
  print("i love food")
}

// State 
"""
is like storage for a variable
can be used using @State var, @State private var
"""

// Buttons

Button("Button Name") // how to create a button

























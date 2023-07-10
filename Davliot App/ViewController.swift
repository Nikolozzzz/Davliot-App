//
//  ViewController.swift
//  Davliot App
//
//  Created by Elene Botchoradze on 7/9/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textLabel: UILabel!
    
    
    @IBAction func buttonPressed(_ sender: UIButton) {
    
    let quiz = [
        "ყველა მოთამაშე *FACEBOOK* პროფილზე აქვეყნებს იმ ფოტოს, რომელსაც მისგან მარჯვნივ მჯდომი აურჩევს მისივე ტელეფონიდან.ფოტო რჩება 30 წუთით.ვინც უარს იტყვის, სვამს სამჯერ.",
        "გაუგზავნე მეგობარს ინტერნეტში მოძიებული პენ@სის ფოტო და არ უპასუხო ხვალამდე. წინააღმდეგ შემთხვევაში სვამ ხუთჯერ.",
        "აირჩიე მოთამაშე. 1 წუთის განმავლობაში თვალების დაუხამხამებლად უყურეთ ერთმანეთს. ვინც პირველი დაახამხამებს სვამს ორჯერ.",
        "აღიარე, რომელი მოთამაშის ახლობელი(ნათესავი) არის ყველაზე სექსუალური. ეს მოთამაშე სვამს. წინააღმდეგ შემთხვევაში სამჯერ სვამ შენ.",
        "ყველა შეყვარებული წყვილი სვამს ვახტანგურად. თუ თქვენს შორის წყვილი არ არის სვამთ ყველა.",
        "ვისაც საზოგადოებრივ ტრანსპორტში სხვისი მესიჯები წაუკითხავს, სვამს.",
        "აიღე ტელეფონი და ცხვირში გააწანი იმ მოთამაშეს, რომელიც დალევაზე თაკილობს. თუ უარს გეტყვის, სვამს სამჯერ.",
        "დაიჭირე ენა ორი თითით და იმღერე *თბილისო*.წინააღმდეგ შემთხვევაში სვამ სამჯერ.",
        "მოთამაშეები ირჩევენ, თუ რომელ ნივთთან გადაიღო სელფი და გამოაქვეყნო სოციალურ ქსელში. ფოტო რჩება 30 წუთით. უარის შემთხვევაში სვამ სამჯერ.",
        "*შემოსწრებულს გაუმარჯოს!!!!* ვინც ბოლოს შემოგიერთდათ სვამს ორჯერ.",
        "შენს შემდეგ სვლამდე ყველას, ვინც დაგელაპარაკება, უპასუხე ყეფით. თუ რამე სიტყვა წამოგცდება, სვამ ოთხჯერ.",
        "დაურეკე ყოფილს სპიკერზე და უთხარი, რომ დაბლა ხარ და შერიგება გინდა.წინააღმდეგ შემთხვევაში სვამ ოთხჯერ.",
        "ყველა დადექით ცალ ფეხზე ისე, რომ არავის და არაფერს მიეყრდნოთ პირველი სამი ადამიანი, ვინც ვერ გაძლებს, სვამს ორჯერ.",
        "დაურეკე რომელიმე მეგობარს და სთხოვე გადმოგირიცხოს 100 ლარი. თუ გადმოგირიცხავს სვამს ყველა, თუ უარს გეტყვის, ორჯერ სვამ შენ.",
        "გააკეთებინე მასაჟი რომელიმე მოთამაშეს. თუ დაგთანხმდება, სვამ შენ. თუ უარს გეტყვის, სვამს სამჯერ.",
        "აირჩიე ვინმე, ეთამაშე ჯეირანი სამამდე, წაგებული სვამს ისე, რომ სასმისს პირს არ აკარებს.",
        "ერთმანეთს ვაჩვენოთ ID ბარათის ფოტოები. ვისაც ყველაზე სასაცილო ფოტო აქვს სვამს ორჯერ. ვინც არ გაჩვენებთ სვამს ოთხჯერ.",
        "მოყევი ანეკდოტი. ვინც გაიცინებს სვამს ორჯერ. თუ არავის გაეცინება, ორჯერ სვამ შენ.",
        "ვინც დაოჯახებულია, სვამს.",
        "განასახიერე სექსის 6 პოზა 10 წამის განმავლობაში. სვამ იმდენჯერ, რამდენი პოზის გაკეთებასაც ვერ მოასწრებ. თუ დროში ჩაეტევი სვამს ყველა.",
        "სამ თვლაზე ყველანი იშვერთ ხელს იმ ადამიანისკენ, რომელმაც, თქვენი აზრით ყველაზე ბოლოს უყურა პორნოს. ეს ადამიანი სვამს იმდენჯერ, რამდენიც მისკენ გაიშვერს ხელს.",
        "მოყევი შენი პირველი კოცნის ისტორია ან დალიე ორჯერ. თუ არავისთვის გიკოცნია, სვამ სამჯერ.",
        "ღრმად ჩაისუნთქე და შეიკავე სუნთქვა 40 წამით. პირველი სამი მოთამაშე, ვინც დანებდება, სვამს ორჯერ.",
        "ვისაც ამ ოთახში მყოფთაგან ვინმესთვის ტუჩებში გიკოცნიათ, სვამთ. თუ ასეთი არავინაა ყველა სვამთ.",
        "მიწერე დედაშენს ან მამაშენს: მოსაწევმა მაგარი *პრიხოდი* მომცა.წინააღმდეგ შემთხვევაში სვამ სამჯერ.",
        "დალიე და მოიფიქრე რაიმე წესი, რომელსაც ყველა მოთამაშე უნდა დაემორჩილოს შენს შემდეგ სვლამდე. სვამს ის ვინც ამ წესს დაარღვევს.",
        "ჩართე ლაივი შენს შემდეგ სვლამდე ან დალიე ორჯერ.",
        "დაიწყე რომელიმე ცნობილი სიმღერა. შენს შემდეგ, ყოველი მომდევნო აგრძელებს მას. ვისაც შეეშლება, სვამს.",
        "დაახატე ყველა მოთამაშეს კეფაზე *𓂸*, რაც დარჩება თამაშის ბოლომდე.უარის შემთხვევაში, სვამს ორჯერ.",
        "ყველა ქალიშვილი/ვაჟიშვილი სვამს ორჯერ.",
        "შენგან მარჯვნივ მჯდომი სვავს ორჯერ.",
        "ჩამოთვალე ყველა მთამაშის სახელი და გვარი. ყველა შეცდომაზე სვამ. თუ არ შეგეშლება სვამს ყველა.",
        "წამით შეუღიტინე ყველას. ვინც გაიცინებს სვამს ორჯერ. თუ არავინ გაიცინებს, ორჯერ სვამ შენ.",
        "ვინც *გაპრანჭული* მოვიდა, სვამს.",
        "აირჩიე რომელიმე მოთამაშე,. გახსენი მისი ინსტაგრამიდან რომელიმე პროფილი და დაალაიქე 10 ყველაზე ძველი ფოტო. თუ უარს გეტყვის, სვამს სამჯერ. თუ დაგთანხმდება, სვამ შენ.",
        "დაურეკე მშობელს ან ნათესავს კითხვით: რა ღირს ჩინური მასაჟი და სად აკეთებენ ყველაზე კარგად?.უარის შემთხვევაში სვამ ორჯერ.",
        "შეშდება ყველა, როცა ხელს მაღლა აწევ. თამაშის განმავლობაში შეგიძლია სამჯერ გააშეშო მოთამაშეები. ვინც გაშეშებას ვერ მოასწრებს სვამს.",
        "დაურეკე რომელიმე რესტორანს ხმამაღალ რეჟიმზე. დაჯავშნე მაგიდა 9 თეფშით და 1 სკამით ცხრათავიანი დევისთვის. ურის შემთხვევაში სვამ ოთხჯერ.",
        "გაუგზავნე შენ ყოფილ შეყვარებულს/პარტნიორს: *🖕* ან დალიე ორჯერ.",
        "ვისთვისაც პორნოს ყურებისას წაუსწვრიათ, სვამს.",
        "აირჩიეთ მოთამაშე, აიყვენეთ ხელში და ისე დაალევინეთ.",
        "ერთი წუთის განმავლობაში ყველა მოთამაშე იმეორებს ყველაფერს რასაც შენ აკეთებ. ვინც ყველაზე ცუდად მოგბაძავს სვამს ორჯერ.",
        "ვინც ბავშობაში ფრჩხილებს იკვნეტდა, სვამს.",
        "მარცხენა თვალით შეხედე შენგან მარცხნივ მჯდომს. მარჯვენა თვალით შეხედე შენგან მარჯვნივ მჯდომს. თუ ვერ შეასრულებ, სვამ ორჯერ. თუ შეასრულებ, საღოლ შენ!",
        "ტაშის დაკვრით ააწყე რაიმე მელოდია. ყველა მოთამაშემ ზუსტად უნდა გაიმეოროს იგი. ვისაც შეეშლება, სვამს ორჯერ. თუ ყველა გაიმეორებს ორჯერ სვამ შენ.",
        "ხუთჯერ სწრაფად თქვი: *ჩიტი, ჩხიკვი, ციყვი*.თუ შეგეშლება სვამ ორჯერ, თუ არა, ასმევ სხვა მოთამაშეს.",
        "ჩაიგუბე პირში ალკოჰოლი 30 წამით. მოთამაშეები შეეცდებიან შენს გაცინებას. თუ გაგაცინებენ, სვამ ორჯერ. თუ ვერა სვამს ყველა დანარჩენი.",
        "შენგან მარჯვნივ მჯდომი შენი ბოსია. შენს შემდეგ სვლამდე ასრულებ ყველაფერს, რასაც დაგავალებს. წინააღმდეგ შემთხვევაში სვამ ორჯერ.",
        "ნება მიეცი რომელიმე მოთამაშეს 20 წამის განმავლობაში ხელი გირტყას საჯდომზე. თან იძახე: *უფრო მაგრად*.უარის შემთხვევაში სვამ სამჯერ.",
        "აირჩიეთ მოთამაშე ჩაუდეთ პირში ძაბრი და ასე დაალევინეთ. უარის შემთხვევაში სვამს ოთხჯერ.",
        "ჩაიდე თითო ყინული ორივე იღლიაში და გედოს, სანამ არ დადნება. წინააღმდეგ შემთხვევაში სვამ ოთხჯერ.",
        "ყველა ვისაც თავისი მასწავლებელი/ლიქტორი მოწონებია, სვამს.",
        "გაიხადე ფეხსაცმელი ჩადე მასში ბოთლი და ასე დალიე. წინააღმდეგ შემთხვევაში სვამ სამჯერ.",
        "ხრით თავებს. სამ თვლაზე იხედებით და ირჩევთ მოთამაშეს, რომელსაც შეხედავთ. ყველა წყვილი რომელიც ერთმანეთს შეხედავს, სვამს.",
        "შენს პირდაპირ მჯდომი მოთამაშე ენით უნდა შეეხოს საკუთარ ცხვირს. თუ ვერ მოახერხებს, სვამს ორჯერ. თუ მოახერხებს, ორჯერ სვამს ყველა დანარჩენი.",
        "ვისაც ახლა მობილური ტელეფონი ჭირავს ხელში, სვამს.",
        "დახუჭე თვალები. ერთ-ერთი მოთამაშე მოვა შენთან შენ მასზე შეხებით უნდა მიხვდე ვინაა. თუ გამოიცნობ, სვამს ყველა. თუ ვერა, სვამ ორჯერ.",
        "გაუცვალე ზედა, გვერდით მჯდომს. უარის შემთხვევაში ორივე სვამთ სამჯერ. თუ გაგიცვლის, ირჩევ ვინ და რამდენჯერ დალიოს.",
        "ვისაც ხელში სასმელი უჭირავს, სვამს.",
        "ყველა სვამს ხელების დაუხმარებლად ვისაც არ გამოუვა, სვამს ორჯერ",
        "შენი ტელეფონიდან რეკავთ რომელიმე კონტაქტთან ხმამაღალი რეჟიმით. როდესაც გიპასუხებთ ყველა გამოსცემთ ინტიმურ ხმებს. წინააღმდეგ შემთხვევაში ყველა სვამს ორჯერ.",
        "ჩამოთვალე სამი ფაქტი იმ ქუჩის სახელწოდების, ან იმ ადამიანის შესახებ, რომლის სახელობის ქუჩაზეც ცხოვრობ. თუ ჩამოთვლი ასმევ სხვას, თუ ვერა, სვამ სამჯერ.",
        "მიწერე: *ჰერპესი მაქვს* მას, ვისაც ბოლოს აკოცე.თამაშის ბოლომდე არ გასცე პასუხი ან დალიე ხუთჯერ.",
        "მოყევი შენი პირველი სექსის ისტორია ან დალიე ორჯერ. თუ სექსი არასოდეს გქონია, სვამ სამჯერ.",
        "ვინც შენზე მაღალია, სვამს ორჯერ.",
        "ვისაც რომელიმე მოთამაშესთან, ან მოთამაშის მეგობართან უფლირტავია, სვამს.",
        "დაიჭირე სასმისი მულებით და სცადე ასე დალევა. თუ არ გამოგივა, სვამ ორჯერ.", ]
        
        
        func viewDidLoad() {
            super.viewDidLoad()
            // Do any additional setup after loading the view.
            textLabel.text = quiz[0]
            
            }
        
        textLabel.text = quiz[Int.random(in: 0...66)]
    }
    
}

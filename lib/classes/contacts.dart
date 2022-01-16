import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:rose_hacks_2022/classes/contact.dart';

class Contacts {
  static List<Contact> getContacts() {
    return [
      Contact(
          name: "911 Emergancy Help",
          phoneNumber: "911",
          description: "Call if you are in a life threatening emergancy!!",
          link: "assets/emergency.jpg",
          selected: false
      ),
      Contact(
          name: "211 Emergancy Help",
          phoneNumber: "211",
          description: "For evacuations, road closures, etc.",
          link: "assets/emergency.jpg",
          selected: false
      ),
      Contact(
          name: "National Domestic Violence Hotline | Abortion",
          phoneNumber: "1-800-799-SAFE",
          description: "",
          link: "assets/abortion.jpg",
          selected: false
      ),
      Contact(
          name: "Post Abortion Counseling",
          phoneNumber: "1-800-228-0332",
          description: "",
          link: "assets/abortion.jpg",
          selected: false
      ),
      Contact(
          name: "Post Abortion Project Rachel",
          phoneNumber: "1-800-5WE-CARE",
          description: "",
          link: "assets/abortion.jpg",
          selected: false
      ),
      Contact(
          name: "National Abortion Federation Hotline",
          phoneNumber: "1-800-772-9100",
          description: "",
          link: "assets/abortion.jpg",
          selected: false
      ),
      Contact(
          name: "National Office of Post Abortion Trauma",
          phoneNumber: "1-800-593-2273",
          description: "",
          link: "assets/abortion.jpg",
          selected: false
      ),
      Contact(
          name: "National Sexual Assault Hotline",
          phoneNumber: "1-800-656-HOPE (4673)",
          description: "",
          link: "assets/assult.jpg",
          selected: false
      ),
      Contact(
          name: "Stop it Now! | Abuse",
          phoneNumber: "1-888-PREVENT",
          description: "",
          link: "assets/abuse.jpg",
          selected: false
      ),
      Contact(
          name: "United States Elder Abuse Hotline",
          phoneNumber: "1-866-363-4276",
          description: "",
          link: "assets/abuse.jpg",
          selected: false
      ),
      Contact(
          name: "National Child Abuse Hotline",
          phoneNumber: "1-800-4-A-CHILD (422-4453)",
          description: "",
          link: "assets/abuse.jpg",
          selected: false
      ),
      Contact(
          name: "Child Abuse Hotline / Dept of Social Services",
          phoneNumber: "1-800-342-3720",
          description: "",
          link: "assets/abuse.jpg",
          selected: false
      ),
      Contact(
          name: "Child Abuse National Hotline",
          phoneNumber: "1-800-25ABUSE",
          description: "",
          link: "assets/abuse.jpg",
          selected: false
      ),
      Contact(
          name: "Children in immediate danger | Abuse",
          phoneNumber: "1-800-THE-LOST",
          description: "",
          link: "assets/abuse.jpg",
          selected: false
      ),
      Contact(
          name: "Exploitation of Children | Abuse",
          phoneNumber: "1-800-843-5678",
          description: "",
          link: "assets/abuse.jpg",
          selected: false
      ),
      Contact(
          name: "Missing Children Help Center | Abuse",
          phoneNumber: "1-800-872-5437",
          description: "",
          link: "assets/abuse.jpg",
          selected: false
      ),
      Contact(
          name: "Marijuana Anonymous | Addiction",
          phoneNumber: "1-800-766-6779",
          description: "",
          link: "assets/addiction.jpg",
          selected: false
      ),
      Contact(
          name: "Alcohol Treatment Referral Hotline (24 hours) | Addiction",
          phoneNumber: "1-800-252-6465",
          description: "",
          link: "assets/addiction.jpg",
          selected: false
      ),
      Contact(
          name: "Families Anonymous | Addiction",
          phoneNumber: "1-800-736-9805",
          description: "",
          link: "assets/addiction.jpg",
          selected: false
      ),
      Contact(
          name: "Cocaine Hotline (24 hours) | Addiction",
          phoneNumber: "1-800-262-2463",
          description: "",
          link: "assets/addiction.jpg",
          selected: false
      ),
      Contact(
          name: "Drug Abuse National Helpline | Addiction",
          phoneNumber: "1-800-662-4357",
          description: "",
          link: "assets/addiction.jpg",
          selected: false
      ),
      Contact(
          name: "National Association for Children of Alcoholics | Addiction",
          phoneNumber: "1-888-554-2627",
          description: "",
          link: "assets/addiction.jpg",
          selected: false
      ),
      Contact(
          name: "Ecstasy Addiction",
          phoneNumber: "1-800-468-6933",
          description: "",
          link: "assets/addiction.jpg",
          selected: false
      ),
      Contact(
          name: "Alcoholics for Christ | Addiction",
          phoneNumber: "1-800-441-7877",
          description: "",
          link: "assets/addiction.jpg",
          selected: false
      ),
      Contact(
          name: "American Cancer Society",
          phoneNumber: "1-800-227-2345",
          description: "",
          link: "assets/cancer.jpg",
          selected: false
      ),
      Contact(
          name: "National Cancer institute",
          phoneNumber: "1-800-422-6237",
          description: "",
          link: "assets/cancer.jpg",
          selected: false
      ),
      Contact(
          name: "Elder Care Locator | Care Givers",
          phoneNumber: "1-800-677-1116",
          description: "",
          link: "assets/care.jpg",
          selected: false
      ),
      Contact(
          name: "Well Spouse Foundation | Care Givers",
          phoneNumber: "1-800-838-0879",
          description: "",
          link: "assets/care.jpg",
          selected: false
      ),
      Contact(
          name: "Rest Ministries | Chronic Illness / Pain",
          phoneNumber: "1-888-751-REST (7378)",
          description: "",
          link: "assets/care.jpg",
          selected: false
      ),
      Contact(
          name: "Watchman Fellowship | Chronic Illness / Pain",
          phoneNumber: "1-817-277-0023",
          description: "",
          link: "assets/care.jpg",
          selected: false
      ),
      Contact(
          name: "Girls and Boys Town | Crisis #s Numbers Teens Under 18",
          phoneNumber: "1-800-448-3000",
          description: "",
          link: "assets/crisiskid.jpg",
          selected: false
      ),
      Contact(
          name: "Hearing Impaired | Crisis #s Numbers Teens Under 18",
          phoneNumber: "1-800-448-1833",
          description: "",
          link: "assets/crisiskid.jpg",
          selected: false
      ),
      Contact(
          name: "Youth Crisis Hotline | Crisis #s Numbers Teens Under 18",
          phoneNumber: "1-800-448-4663",
          description: "",
          link: "assets/crisiskid.jpg",
          selected: false
      ),
      Contact(
          name: "Teen Hope Line | Crisis #s Numbers Teens Under 18",
          phoneNumber: "1-800-394-HOPE",
          description: "",
          link: "assets/crisiskid.jpg",
          selected: false
      ),
      Contact(
          name: "United Way Crisis Helpline | Crisis #s Numbers Any Age All Age",
          phoneNumber: "1-800-233-HELP",
          description: "",
          link: "assets/crisisadult.jpg",
          selected: false
      ),
      Contact(
          name: "Christian Oriented Hotline | Crisis #s Numbers Any Age All Age",
          phoneNumber: "1-877-949-HELP",
          description: "",
          link: "assets/crisisadult.jpg",
          selected: false
      ),
      Contact(
          name: "Social Security Administration | Crisis #s Numbers Any Age All Age",
          phoneNumber: "1-800-772-1213",
          description: "",
          link: "assets/crisisadult.jpg",
          selected: false
      ),
      Contact(
          name: "Crisis Pregnancy Hotline Number | Crisis Pregnancy Help",
          phoneNumber: "1-800-67-BABY-6",
          description: "",
          link: "assets/pregnancy.jpg",
          selected: false
      ),
      Contact(
          name: "Liberty Godparent Ministry | Crisis Pregnancy Help",
          phoneNumber: "1-800-368-3336",
          description: "",
          link: "assets/pregnancy.jpg",
          selected: false
      ),
      Contact(
          name: "National Domestic Violence Hotline",
          phoneNumber: "1-800-799-SAFE",
          description: "",
          link: "assets/domesticviolence.jpg",
          selected: false
      ),
      Contact(
          name: "National Domestic Violence Hotline Spanish",
          phoneNumber: "1-800-942-6908",
          description: "",
          link: "assets/domesticviolence.jpg",
          selected: false
      ),
      Contact(
          name: "Battered Women and their Children",
          phoneNumber: "1-800-603-HELP",
          description: "",
          link: "assets/domesticviolence.jpg",
          selected: false
      ),
      Contact(
          name: "Elder Abuse Hotline | Domestic Violence",
          phoneNumber: "1-800-252-8966",
          description: "",
          link: "assets/domesticviolence.jpg",
          selected: false
      ),
      Contact(
          name: "RAINN | Domestic Violence",
          phoneNumber: "1-800-656-HOPE (4673)",
          description: "",
          link: "assets/domesticviolence.jpg",
          selected: false
      ),
      Contact(
          name: "Eating Disorders Awareness and Prevention",
          phoneNumber: "1-800-931-2237",
          description: "",
          link: "assets/eatingdisorder.jpg",
          selected: false
      ),
      Contact(
          name: "Eating Disorders Center",
          phoneNumber: "1-888-236-1188",
          description: "",
          link: "assets/eatingdisorder.jpg",
          selected: false
      ),
      Contact(
          name: "National Association of Anorexia Nervosa and Associated Disorders | Eating Disorders",
          phoneNumber: "1-847-831-3438",
          description: "",
          link: "assets/eatingdisorder.jpg",
          selected: false
      ),
      Contact(
          name: "Remuda Ranch",
          phoneNumber: "1-800-445-1900",
          description: "",
          link: "assets/eatingdisorder.jpg",
          selected: false
      ),
      Contact(
          name: "LGBTQIA+ Helpline",
          phoneNumber: "1-800-398-GAYS",
          description: "",
          link: "assets/lgbtq.jpg",
          selected: false
      ),
      Contact(
          name: "Gay and Lesbian National Hotline | LGBTQIA+",
          phoneNumber: "1-800-398-GAYS",
          description: "",
          link: "assets/lgbtq.jpg",
          selected: false
      ),
      Contact(
          name: "Trevor Hotline (Suicide)",
          phoneNumber: "1-866-4-U-TREVOR",
          description: "Trever hot line was created to help those struggling with suicide, especially the LGBTQIA+ community",
          link: "assets/lgbtq.jpg",
          selected: false
      ),
      Contact(
          name: "S.A.F.E. (Self Abuse Finally Ends) | Self Harm",
          phoneNumber: "1-800-DONT-CUT",
          description: "",
          link: "assets/gethelp.png",
          selected: false
      ),
      Contact(
          name: "Suicide Hotline",
          phoneNumber: "1-800-SUICIDE (784-2433) , 1-800-273-TALK (8255)",
          description: "",
          link: "assets/gethelp.png",
          selected: false
      ),
      Contact(
          name: "Suicide Prevention Hotline",
          phoneNumber: "1-800-827-7571",
          description: "",
          link: "assets/gethelp.png",
          selected: false
      ),
      Contact(
          name: "Deaf Hotline | Suicide",
          phoneNumber: "1-800-799-4TTY",
          description: "",
          link: "assets/gethelp.png",
          selected: false
      ),
      Contact(
          name: "Holy Spirit Teenline | Suicide",
          phoneNumber: "(717) 763-2345 or 1-800-722-5385",
          description: "",
          link: "assets/gethelp.png",
          selected: false
      ),
      Contact(
          name: "Crisis Intervention (Harrisburg) | Suicide",
          phoneNumber: "(717) 232-7511 or 1- 888- 596-4447",
          description: "",
          link: "assets/gethelp.png",
          selected: false
      ),
      Contact(
          name: "Carlisle Helpline | Suicide",
          phoneNumber: "(717) 249-6226",
          description: "",
          link: "assets/gethelp.png",
          selected: false
      ),
      Contact(
          name: "Crisis Intervention (York) | Suicide",
          phoneNumber: "(717) 851-5320 or 1-800-673-2496",
          description: "",
          link: "assets/gethelp.png",
          selected: false
      ),
      Contact(
          name: "San Diego Police Non-Emergency",
          phoneNumber: "(619)-531-2000 or (858)-484-3154",
          description: "San Diego Police can help you save your pet",
          link: "assets/cars.jpg",
          selected: false
      ), // https://www.pleaselive.org/hotlines/
      Contact(
          name: "County of San Diego Sheriff",
          phoneNumber: "(858)-565-5200",
          description: "SD Sheriff's #",
          link: "assets/mental_health.png",
          selected: false
      ),
      Contact(
          name: "California Highway Patrol",
          phoneNumber: "800-835-5247",
          description: "For your highway needs",
          link: "assets/cars.jpg",
          selected: false
      ),
    ];
  }
}

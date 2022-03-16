class Session {
  String imgUrl;
  String genre;
  String title;
  String duration;
  List<Map<String, String>> sessionDetail;

  Session(
      {required this.imgUrl,
      required this.genre,
      required this.title,
      required this.duration,
      required this.sessionDetail});

  static happy() {
    return [
      Session(
          imgUrl: 'assets/images/home1.png',
          genre: 'Meditation',
          title: 'Stay Calm',
          duration: '10 min',
          sessionDetail: [
            {
              'imgUrl': 'assets/images/home1.png',
              'genre': 'Meditation',
              'title': 'Stay Calm',
              'duration': '10 min',
              'desc':
                  'Meditation is the practice of thinking deeply in silence, in order to make the mind calm. Through regular mediation, levels of stress can be reduced as well as managed. Meditation is a relaxation technique like yoga and deep breathing that activates the body’s relaxation response.',
              'audio':
                  'https://firebasestorage.googleapis.com/v0/b/letgorelaxingapp.appspot.com/o/audio%2Fsample1.mp3?alt=media&token=1a1411fa-41fb-49bc-ae5e-97155b948cc4'
            }
          ]),
      Session(
          imgUrl: 'assets/images/home2.png',
          genre: 'Relaxed',
          title: 'Stillness',
          duration: '7 min',
          sessionDetail: [
            {
              'imgUrl': 'assets/images/home2.png',
              'genre': 'Relaxed',
              'title': 'Stillness',
              'duration': '7 min',
              'desc':
                  'Relaxation in psychology is the emotional state of a living being, of low tension, in which there is an absence of arousal, particularly from negative sources such as anger, anxiety, or fear. According to Oxford Dictionaries relaxation is when the body and mind are free from tension and anxiety.',
              'audio':
                  'https://firebasestorage.googleapis.com/v0/b/letgorelaxingapp.appspot.com/o/audio%2Fsample2.mp3?alt=media&token=1b34050c-51b4-4e10-a6ac-57691af8572d'
            }
          ])
    ];
  }

  static anxious() {
    return [
      Session(
        imgUrl: 'assets/images/home3.png',
        genre: 'Calm',
        title: 'Calm 5',
        duration: '5 min',
        sessionDetail: [
          {
            'imgUrl': 'assets/images/home3.png',
            'genre': 'Calm',
            'title': 'Calm 5',
            'duration': '5 min',
            'desc':
                'Meditation is the practice of thinking deeply in silence, in order to make the mind calm. Through regular mediation, levels of stress can be reduced as well as managed. Meditation is a relaxation technique like yoga and deep breathing that activates the body’s relaxation response.',
            'audio':
                'https://firebasestorage.googleapis.com/v0/b/letgorelaxingapp.appspot.com/o/audio%2Fsample3.mp3?alt=media&token=4e24329b-86dd-4acf-a0cc-1dc42f4f1439'
          }
        ],
      ),
      Session(
          imgUrl: 'assets/images/home4.png',
          genre: 'Focus',
          title: 'Aware',
          duration: '8 min',
          sessionDetail: [
            {
              'imgUrl': 'assets/images/home4.png',
              'genre': 'Focus',
              'title': 'Aware',
              'duration': '8 min',
              'desc':
                  'Relaxation in psychology is the emotional state of a living being, of low tension, in which there is an absence of arousal, particularly from negative sources such as anger, anxiety, or fear. According to Oxford Dictionaries relaxation is when the body and mind are free from tension and anxiety.',
              'audio':
                  'https://firebasestorage.googleapis.com/v0/b/letgorelaxingapp.appspot.com/o/audio%2Fsample4.mp3?alt=media&token=22fdb208-2a6a-4769-9c60-8b283daec020'
            }
          ]),
    ];
  }

  static sad() {
    return [
      Session(
        imgUrl: 'assets/images/home5.png',
        genre: 'Mood Uplift',
        title: 'Steady',
        duration: '3 min',
        sessionDetail: [
          {
            'imgUrl': 'assets/images/home5.png',
            'genre': 'Mood Uplift',
            'title': 'Steady',
            'duration': '3 min',
            'desc':
                'Meditation is the practice of thinking deeply in silence, in order to make the mind calm. Through regular mediation, levels of stress can be reduced as well as managed. Meditation is a relaxation technique like yoga and deep breathing that activates the body’s relaxation response.',
            'audio':
                'https://firebasestorage.googleapis.com/v0/b/letgorelaxingapp.appspot.com/o/audio%2Fsample5.mp3?alt=media&token=9ce337ce-4190-4a8a-8ec2-875b383a0eca'
          }
        ],
      ),
      Session(
          imgUrl: 'assets/images/home6.png',
          genre: 'Let go',
          title: 'Time',
          duration: '8 min',
          sessionDetail: [
            {
              'imgUrl': 'assets/images/home6.png',
              'genre': 'Let go',
              'title': 'Time',
              'duration': '8 min',
              'desc':
                  'Relaxation in psychology is the emotional state of a living being, of low tension, in which there is an absence of arousal, particularly from negative sources such as anger, anxiety, or fear. According to Oxford Dictionaries relaxation is when the body and mind are free from tension and anxiety.',
              'audio':
                  'https://firebasestorage.googleapis.com/v0/b/letgorelaxingapp.appspot.com/o/audio%2Fsample5.mp3?alt=media&token=9ce337ce-4190-4a8a-8ec2-875b383a0eca'
            }
          ])
    ];
  }

  static fine() {
    return [
      Session(
        imgUrl: 'assets/images/home7.png',
        genre: 'Gratitude',
        title: 'Oneness',
        duration: '5 min',
        sessionDetail: [
          {
            'imgUrl': 'assets/images/home7.png',
            'genre': 'Gratitude',
            'title': 'Oneness',
            'duration': '5 min',
            'desc':
                'Meditation is the practice of thinking deeply in silence, in order to make the mind calm. Through regular mediation, levels of stress can be reduced as well as managed. Meditation is a relaxation technique like yoga and deep breathing that activates the body’s relaxation response.'
          }
        ],
      ),
      Session(
          imgUrl: 'assets/images/home8.png',
          genre: 'Joy',
          title: 'Timing',
          duration: '7 min',
          sessionDetail: [
            {
              'imgUrl': 'assets/images/home8.png',
              'genre': 'Joy',
              'title': 'Timing',
              'duration': '7 min',
              'desc':
                  'Relaxation in psychology is the emotional state of a living being, of low tension, in which there is an absence of arousal, particularly from negative sources such as anger, anxiety, or fear. According to Oxford Dictionaries relaxation is when the body and mind are free from tension and anxiety.'
            }
          ])
    ];
  }

  static excited() {
    return [
      Session(
          imgUrl: 'assets/images/home9.png',
          genre: 'Happiness',
          title: 'Stay relaxed',
          duration: '10 min',
          sessionDetail: [
            {
              'imgUrl': 'assets/images/home9.png',
              'genre': 'Happiness',
              'title': 'Stay relaxed',
              'duration': '10 min',
              'desc':
                  'Meditation is the practice of thinking deeply in silence, in order to make the mind calm. Through regular mediation, levels of stress can be reduced as well as managed. Meditation is a relaxation technique like yoga and deep breathing that activates the body’s relaxation response.',
              'audio':
                  'https://firebasestorage.googleapis.com/v0/b/letgorelaxingapp.appspot.com/o/audio%2Fsample5.mp3?alt=media&token=9ce337ce-4190-4a8a-8ec2-875b383a0eca'
            }
          ]),
      Session(
          imgUrl: 'assets/images/home10.png',
          genre: 'Chill',
          title: 'Smile',
          duration: '9 min',
          sessionDetail: [
            {
              'imgUrl': 'assets/images/home10.png',
              'genre': 'Chill',
              'title': 'Smile',
              'duration': '9 min',
              'desc':
                  'Relaxation in psychology is the emotional state of a living being, of low tension, in which there is an absence of arousal, particularly from negative sources such as anger, anxiety, or fear. According to Oxford Dictionaries relaxation is when the body and mind are free from tension and anxiety.',
              'audio':
                  'https://firebasestorage.googleapis.com/v0/b/letgorelaxingapp.appspot.com/o/audio%2Fsample5.mp3?alt=media&token=9ce337ce-4190-4a8a-8ec2-875b383a0eca'
            }
          ])
    ];
  }

  static nervous() {
    return [
      Session(
          imgUrl: 'assets/images/home11.png',
          genre: 'Focus',
          title: 'Calmness',
          duration: '8 min',
          sessionDetail: [
            {
              'imgUrl': 'assets/images/home11.png',
              'genre': 'Focus',
              'title': 'Calmness',
              'duration': '8 min',
              'desc':
                  'Meditation is the practice of thinking deeply in silence, in order to make the mind calm. Through regular mediation, levels of stress can be reduced as well as managed. Meditation is a relaxation technique like yoga and deep breathing that activates the body’s relaxation response.',
              'audio':
                  'https://firebasestorage.googleapis.com/v0/b/letgorelaxingapp.appspot.com/o/audio%2Fsample5.mp3?alt=media&token=9ce337ce-4190-4a8a-8ec2-875b383a0eca'
            }
          ]),
      Session(
          imgUrl: 'assets/images/home12.png',
          genre: 'Notice',
          title: 'Pink Salt',
          duration: '7 min',
          sessionDetail: [
            {
              'imgUrl': 'assets/images/home12.png',
              'genre': 'Notice',
              'title': 'Pink Salt',
              'duration': '7 min',
              'desc':
                  'Relaxation in psychology is the emotional state of a living being, of low tension, in which there is an absence of arousal, particularly from negative sources such as anger, anxiety, or fear. According to Oxford Dictionaries relaxation is when the body and mind are free from tension and anxiety.',
              'audio':
                  'https://firebasestorage.googleapis.com/v0/b/letgorelaxingapp.appspot.com/o/audio%2Fsample6.mp3?alt=media&token=f5544754-736d-4741-8a08-8a6bc10e0124'
            }
          ])
    ];
  }
}

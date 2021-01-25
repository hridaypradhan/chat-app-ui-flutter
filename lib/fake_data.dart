import 'components/chat_list_tile.dart';
import 'components/story_icon.dart';

final stories = [
    StoryIcon(viewed: true),
    StoryIcon(viewed: false),
    StoryIcon(viewed: true),
    StoryIcon(viewed: false),
    StoryIcon(viewed: true),
    StoryIcon(viewed: false),
  ];

  final messageThreads = [
    ChatListTile( 
      day: 'Mon',
      name: 'Ruben Sauer',
      lastMessage: 'Pizza is too good to be true!',
      isUnread: true,
    ),
    ChatListTile(
      day: 'Tue',
      name: 'Brendan Pouros',
      lastMessage: 'numquam dolores necessitatibus',
      isUnread: false,
    ),
    ChatListTile(
      day: 'Wed',
      name: 'Muriel Hammes',
      lastMessage: 'Hellooo',
      isUnread: true,
    ),
    ChatListTile(
      day: 'Thurs',
      name: 'Traci Wiza',
      lastMessage: 'sint laboriosam consectetur',
      isUnread: true,
    ),
    ChatListTile( 
      day: 'Mon',
      name: 'Carolyn Olson',
      lastMessage: 'Voluptatem iure et nam.',
      isUnread: false,
    ),
    ChatListTile(
      day: 'Tue',
      name: 'Diana Mueller',
      lastMessage: 'Voluptate minus quia enim dolores asperiores commodi quia aliquid architecto.',
      isUnread: false,
    ),
    ChatListTile(
      day: 'Wed',
      name: 'Francis Anderson',
      lastMessage: 'doloribus sunt corrupti',
      isUnread: true,
    ),
    ChatListTile(
      day: 'Thurs',
      name: 'Casey Schimmel',
      lastMessage: 'Quidem modi quis nobis modi quasi in ab nemo.',
      isUnread: false,
    ),
    ChatListTile(
      day: 'Fri',
      name: 'Joy Windler',
      lastMessage: 'Unde assumenda molestiae doloribus enim sit ut.',
      isUnread: true,
    ),
    ChatListTile(
      day: 'Sat',
      name: 'Deborah Goldner Jr.',
      lastMessage: 'Fuga quibusdam sequi optio eum in.',
      isUnread: false,
    ),
    ChatListTile(
      day: 'Sun',
      name: 'Mr. Andres Keebler',
      lastMessage: 'et eum quo',
      isUnread: true,
    ),
  ];
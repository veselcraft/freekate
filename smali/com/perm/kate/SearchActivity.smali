.class public Lcom/perm/kate/SearchActivity;
.super Lcom/perm/kate/BaseActivity;
.source "SearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perm/kate/SearchActivity$MessagesSearchType;,
        Lcom/perm/kate/SearchActivity$SearchType;
    }
.end annotation


# instance fields
.field private add_param_OnClickListener:Landroid/view/View$OnClickListener;

.field private adult:Ljava/lang/Integer;

.field private age_from:Ljava/lang/Integer;

.field private age_to:Ljava/lang/Integer;

.field audioHelper:Lcom/perm/kate/AudioClickHelper;

.field private audio_callback:Lcom/perm/kate/session/Callback;

.field private audio_listener:Landroid/widget/AdapterView$OnItemClickListener;

.field private audios:Ljava/util/ArrayList;

.field private birth_day:Ljava/lang/Integer;

.field private birth_month:Ljava/lang/Integer;

.field private birth_year:Ljava/lang/Integer;

.field private btn_add_parameters:Landroid/widget/Button;

.field private btn_attach:Landroid/widget/Button;

.field private btn_clear:Landroid/widget/ImageButton;

.field private btn_search:Landroid/widget/ImageButton;

.field private callback_load_more:Lcom/perm/kate/session/Callback;

.field private callback_load_more_groups:Lcom/perm/kate/session/Callback;

.field callback_load_more_users:Lcom/perm/kate/session/Callback;

.field private city:Ljava/lang/Integer;

.field private company:Ljava/lang/String;

.field private country:Ljava/lang/Integer;

.field private doc_listener:Landroid/widget/AdapterView$OnItemClickListener;

.field docs:Ljava/util/ArrayList;

.field private docs_callback:Lcom/perm/kate/session/Callback;

.field private docs_load_more_callback:Lcom/perm/kate/session/Callback;

.field private filters:Ljava/lang/String;

.field private group_callback:Lcom/perm/kate/session/Callback;

.field private group_id:Ljava/lang/Long;

.field private group_listener:Landroid/widget/AdapterView$OnItemClickListener;

.field groups:Ljava/util/ArrayList;

.field private handler:Landroid/os/Handler;

.field private has_photo:Ljava/lang/Integer;

.field private hd:Ljava/lang/Integer;

.field private history_adapter:Lcom/perm/kate/SearchHistoryAdapter;

.field private history_listener:Landroid/widget/AdapterView$OnItemClickListener;

.field private hometown:Ljava/lang/String;

.field private label_for_button:Ljava/lang/String;

.field private last_query:Ljava/lang/String;

.field private listener:Landroid/widget/AdapterView$OnItemClickListener;

.field private listener2:Landroid/widget/AdapterView$OnItemClickListener;

.field private ll_add_parameters:Landroid/widget/FrameLayout;

.field private load_more_searchmessages_callback:Lcom/perm/kate/session/Callback;

.field private long_click_listener:Landroid/widget/AdapterView$OnItemLongClickListener;

.field private lv_search_list:Landroid/widget/ListView;

.field private mentions_callback:Lcom/perm/kate/session/Callback;

.field private mentions_load_more_callback:Lcom/perm/kate/session/Callback;

.field private message_page_size:I

.field private messagesSearchType:Lcom/perm/kate/SearchActivity$MessagesSearchType;

.field private messages_search_callback:Lcom/perm/kate/session/Callback;

.field private news_callback:Lcom/perm/kate/session/Callback;

.field private news_from:Ljava/lang/String;

.field private news_listener:Landroid/widget/AdapterView$OnItemClickListener;

.field private news_load_more_callback:Lcom/perm/kate/session/Callback;

.field private news_page_size:Ljava/lang/Long;

.field offset:J

.field private online:Ljava/lang/Integer;

.field private peer_id:Ljava/lang/Long;

.field private performer_only:Ljava/lang/Integer;

.field playerCallback:Lcom/perm/kate/Player$PlayerCallback;

.field private position:Ljava/lang/String;

.field private religion:Ljava/lang/String;

.field private school:Ljava/lang/Integer;

.field private school_city:Ljava/lang/Integer;

.field private school_country:Ljava/lang/Integer;

.field private school_year:Ljava/lang/Integer;

.field private scrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private sd_adapter:Lcom/perm/kate/SearchedDialogsAdapter;

.field private searchDialogsItems:Ljava/util/ArrayList;

.field private searchType:Lcom/perm/kate/SearchActivity$SearchType;

.field private search_OnClickListener:Landroid/view/View$OnClickListener;

.field private search_text_watcher:Landroid/text/TextWatcher;

.field private searched_messages:Ljava/util/ArrayList;

.field private selectClickListener:Landroid/view/View$OnClickListener;

.field private select_audio:Z

.field private select_user:Z

.field private select_video:Z

.field private sex:Ljava/lang/Integer;

.field private shownHistory:Z

.field private sort:Ljava/lang/Integer;

.field private startDialogsSearchRunnable:Ljava/lang/Runnable;

.field private state:I

.field private status:Ljava/lang/Integer;

.field private tb_search:Landroid/widget/EditText;

.field private univer:J

.field private university:Ljava/lang/Integer;

.field private university_country:Ljava/lang/Integer;

.field private university_year:Ljava/lang/Integer;

.field private user_callback:Lcom/perm/kate/session/Callback;

.field private user_listener:Landroid/widget/AdapterView$OnItemClickListener;

.field user_page_size:Ljava/lang/Long;

.field users:Ljava/util/ArrayList;

.field private videoMenuCallback:Lcom/perm/kate/VideoMenuCallback;

.field private video_callback:Lcom/perm/kate/session/Callback;

.field private video_listener:Landroid/widget/AdapterView$OnItemClickListener;

.field video_page_size:Ljava/lang/Long;

.field private video_sort:Ljava/lang/Integer;

.field videos:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 51
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;-><init>()V

    .line 59
    sget-object v0, Lcom/perm/kate/SearchActivity$SearchType;->None:Lcom/perm/kate/SearchActivity$SearchType;

    iput-object v0, p0, Lcom/perm/kate/SearchActivity;->searchType:Lcom/perm/kate/SearchActivity$SearchType;

    const/4 v0, -0x1

    .line 61
    iput v0, p0, Lcom/perm/kate/SearchActivity;->state:I

    const-wide/16 v0, 0x14

    .line 68
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/SearchActivity;->video_page_size:Ljava/lang/Long;

    .line 69
    iput-object v0, p0, Lcom/perm/kate/SearchActivity;->user_page_size:Ljava/lang/Long;

    const/4 v1, 0x0

    .line 71
    iput-boolean v1, p0, Lcom/perm/kate/SearchActivity;->select_audio:Z

    .line 72
    iput-boolean v1, p0, Lcom/perm/kate/SearchActivity;->select_video:Z

    .line 73
    iput-boolean v1, p0, Lcom/perm/kate/SearchActivity;->select_user:Z

    .line 249
    new-instance v2, Lcom/perm/kate/SearchActivity$3;

    invoke-direct {v2, p0}, Lcom/perm/kate/SearchActivity$3;-><init>(Lcom/perm/kate/SearchActivity;)V

    iput-object v2, p0, Lcom/perm/kate/SearchActivity;->search_OnClickListener:Landroid/view/View$OnClickListener;

    .line 396
    new-instance v2, Lcom/perm/kate/SearchActivity$6;

    invoke-direct {v2, p0, p0}, Lcom/perm/kate/SearchActivity$6;-><init>(Lcom/perm/kate/SearchActivity;Landroid/app/Activity;)V

    iput-object v2, p0, Lcom/perm/kate/SearchActivity;->audio_callback:Lcom/perm/kate/session/Callback;

    .line 422
    new-instance v2, Lcom/perm/kate/AudioClickHelper;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/perm/kate/AudioClickHelper;-><init>(Lcom/perm/kate/BaseActivity;Lcom/perm/kate/AudioClickHelper$AudioClickHelperCallback;)V

    iput-object v2, p0, Lcom/perm/kate/SearchActivity;->audioHelper:Lcom/perm/kate/AudioClickHelper;

    .line 424
    new-instance v2, Lcom/perm/kate/SearchActivity$7;

    invoke-direct {v2, p0}, Lcom/perm/kate/SearchActivity$7;-><init>(Lcom/perm/kate/SearchActivity;)V

    iput-object v2, p0, Lcom/perm/kate/SearchActivity;->audio_listener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 440
    new-instance v2, Lcom/perm/kate/SearchActivity$8;

    invoke-direct {v2, p0}, Lcom/perm/kate/SearchActivity$8;-><init>(Lcom/perm/kate/SearchActivity;)V

    iput-object v2, p0, Lcom/perm/kate/SearchActivity;->playerCallback:Lcom/perm/kate/Player$PlayerCallback;

    .line 471
    new-instance v2, Lcom/perm/kate/SearchActivity$9;

    invoke-direct {v2, p0}, Lcom/perm/kate/SearchActivity$9;-><init>(Lcom/perm/kate/SearchActivity;)V

    iput-object v2, p0, Lcom/perm/kate/SearchActivity;->selectClickListener:Landroid/view/View$OnClickListener;

    .line 499
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/perm/kate/SearchActivity;->videos:Ljava/util/ArrayList;

    .line 500
    new-instance v2, Lcom/perm/kate/SearchActivity$10;

    invoke-direct {v2, p0, p0}, Lcom/perm/kate/SearchActivity$10;-><init>(Lcom/perm/kate/SearchActivity;Landroid/app/Activity;)V

    iput-object v2, p0, Lcom/perm/kate/SearchActivity;->video_callback:Lcom/perm/kate/session/Callback;

    .line 526
    new-instance v2, Lcom/perm/kate/SearchActivity$11;

    invoke-direct {v2, p0}, Lcom/perm/kate/SearchActivity$11;-><init>(Lcom/perm/kate/SearchActivity;)V

    iput-object v2, p0, Lcom/perm/kate/SearchActivity;->video_listener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 553
    new-instance v2, Lcom/perm/kate/SearchActivity$12;

    invoke-direct {v2, p0}, Lcom/perm/kate/SearchActivity$12;-><init>(Lcom/perm/kate/SearchActivity;)V

    iput-object v2, p0, Lcom/perm/kate/SearchActivity;->videoMenuCallback:Lcom/perm/kate/VideoMenuCallback;

    .line 571
    new-instance v2, Lcom/perm/kate/SearchActivity$13;

    invoke-direct {v2, p0}, Lcom/perm/kate/SearchActivity$13;-><init>(Lcom/perm/kate/SearchActivity;)V

    iput-object v2, p0, Lcom/perm/kate/SearchActivity;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    const-wide/16 v4, 0x0

    .line 599
    iput-wide v4, p0, Lcom/perm/kate/SearchActivity;->offset:J

    .line 662
    new-instance v2, Lcom/perm/kate/SearchActivity$16;

    invoke-direct {v2, p0, p0}, Lcom/perm/kate/SearchActivity$16;-><init>(Lcom/perm/kate/SearchActivity;Landroid/app/Activity;)V

    iput-object v2, p0, Lcom/perm/kate/SearchActivity;->callback_load_more:Lcom/perm/kate/session/Callback;

    .line 692
    iput-object v3, p0, Lcom/perm/kate/SearchActivity;->sort:Ljava/lang/Integer;

    .line 693
    iput-object v3, p0, Lcom/perm/kate/SearchActivity;->city:Ljava/lang/Integer;

    .line 694
    iput-object v3, p0, Lcom/perm/kate/SearchActivity;->country:Ljava/lang/Integer;

    .line 695
    iput-wide v4, p0, Lcom/perm/kate/SearchActivity;->univer:J

    .line 696
    iput-object v3, p0, Lcom/perm/kate/SearchActivity;->hometown:Ljava/lang/String;

    .line 697
    iput-object v3, p0, Lcom/perm/kate/SearchActivity;->university_country:Ljava/lang/Integer;

    .line 698
    iput-object v3, p0, Lcom/perm/kate/SearchActivity;->university:Ljava/lang/Integer;

    .line 699
    iput-object v3, p0, Lcom/perm/kate/SearchActivity;->university_year:Ljava/lang/Integer;

    .line 700
    iput-object v3, p0, Lcom/perm/kate/SearchActivity;->sex:Ljava/lang/Integer;

    .line 701
    iput-object v3, p0, Lcom/perm/kate/SearchActivity;->status:Ljava/lang/Integer;

    .line 702
    iput-object v3, p0, Lcom/perm/kate/SearchActivity;->age_from:Ljava/lang/Integer;

    .line 703
    iput-object v3, p0, Lcom/perm/kate/SearchActivity;->age_to:Ljava/lang/Integer;

    .line 704
    iput-object v3, p0, Lcom/perm/kate/SearchActivity;->birth_day:Ljava/lang/Integer;

    .line 705
    iput-object v3, p0, Lcom/perm/kate/SearchActivity;->birth_month:Ljava/lang/Integer;

    .line 706
    iput-object v3, p0, Lcom/perm/kate/SearchActivity;->birth_year:Ljava/lang/Integer;

    .line 707
    iput-object v3, p0, Lcom/perm/kate/SearchActivity;->online:Ljava/lang/Integer;

    .line 708
    iput-object v3, p0, Lcom/perm/kate/SearchActivity;->has_photo:Ljava/lang/Integer;

    .line 709
    iput-object v3, p0, Lcom/perm/kate/SearchActivity;->school_country:Ljava/lang/Integer;

    .line 710
    iput-object v3, p0, Lcom/perm/kate/SearchActivity;->school_city:Ljava/lang/Integer;

    .line 711
    iput-object v3, p0, Lcom/perm/kate/SearchActivity;->school:Ljava/lang/Integer;

    .line 712
    iput-object v3, p0, Lcom/perm/kate/SearchActivity;->school_year:Ljava/lang/Integer;

    .line 713
    iput-object v3, p0, Lcom/perm/kate/SearchActivity;->religion:Ljava/lang/String;

    .line 714
    iput-object v3, p0, Lcom/perm/kate/SearchActivity;->company:Ljava/lang/String;

    .line 715
    iput-object v3, p0, Lcom/perm/kate/SearchActivity;->position:Ljava/lang/String;

    .line 716
    iput-object v3, p0, Lcom/perm/kate/SearchActivity;->group_id:Ljava/lang/Long;

    .line 733
    new-instance v2, Lcom/perm/kate/SearchActivity$17;

    invoke-direct {v2, p0}, Lcom/perm/kate/SearchActivity$17;-><init>(Lcom/perm/kate/SearchActivity;)V

    iput-object v2, p0, Lcom/perm/kate/SearchActivity;->add_param_OnClickListener:Landroid/view/View$OnClickListener;

    .line 832
    new-instance v2, Lcom/perm/kate/SearchActivity$18;

    invoke-direct {v2, p0, p0}, Lcom/perm/kate/SearchActivity$18;-><init>(Lcom/perm/kate/SearchActivity;Landroid/app/Activity;)V

    iput-object v2, p0, Lcom/perm/kate/SearchActivity;->user_callback:Lcom/perm/kate/session/Callback;

    .line 854
    new-instance v2, Lcom/perm/kate/SearchActivity$19;

    invoke-direct {v2, p0}, Lcom/perm/kate/SearchActivity$19;-><init>(Lcom/perm/kate/SearchActivity;)V

    iput-object v2, p0, Lcom/perm/kate/SearchActivity;->user_listener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 877
    new-instance v2, Lcom/perm/kate/SearchActivity$20;

    invoke-direct {v2, p0, p0}, Lcom/perm/kate/SearchActivity$20;-><init>(Lcom/perm/kate/SearchActivity;Landroid/app/Activity;)V

    iput-object v2, p0, Lcom/perm/kate/SearchActivity;->callback_load_more_users:Lcom/perm/kate/session/Callback;

    .line 905
    new-instance v2, Lcom/perm/kate/SearchActivity$21;

    invoke-direct {v2, p0, p0}, Lcom/perm/kate/SearchActivity$21;-><init>(Lcom/perm/kate/SearchActivity;Landroid/app/Activity;)V

    iput-object v2, p0, Lcom/perm/kate/SearchActivity;->group_callback:Lcom/perm/kate/session/Callback;

    .line 926
    new-instance v2, Lcom/perm/kate/SearchActivity$22;

    invoke-direct {v2, p0}, Lcom/perm/kate/SearchActivity$22;-><init>(Lcom/perm/kate/SearchActivity;)V

    iput-object v2, p0, Lcom/perm/kate/SearchActivity;->group_listener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 939
    new-instance v2, Lcom/perm/kate/SearchActivity$23;

    invoke-direct {v2, p0, p0}, Lcom/perm/kate/SearchActivity$23;-><init>(Lcom/perm/kate/SearchActivity;Landroid/app/Activity;)V

    iput-object v2, p0, Lcom/perm/kate/SearchActivity;->callback_load_more_groups:Lcom/perm/kate/session/Callback;

    const/16 v2, 0x14

    .line 968
    iput v2, p0, Lcom/perm/kate/SearchActivity;->message_page_size:I

    .line 970
    sget-object v2, Lcom/perm/kate/SearchActivity$MessagesSearchType;->None:Lcom/perm/kate/SearchActivity$MessagesSearchType;

    iput-object v2, p0, Lcom/perm/kate/SearchActivity;->messagesSearchType:Lcom/perm/kate/SearchActivity$MessagesSearchType;

    .line 972
    iput-object v3, p0, Lcom/perm/kate/SearchActivity;->peer_id:Ljava/lang/Long;

    .line 994
    new-instance v2, Lcom/perm/kate/SearchActivity$25;

    invoke-direct {v2, p0}, Lcom/perm/kate/SearchActivity$25;-><init>(Lcom/perm/kate/SearchActivity;)V

    iput-object v2, p0, Lcom/perm/kate/SearchActivity;->listener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 1002
    new-instance v2, Lcom/perm/kate/SearchActivity$26;

    invoke-direct {v2, p0}, Lcom/perm/kate/SearchActivity$26;-><init>(Lcom/perm/kate/SearchActivity;)V

    iput-object v2, p0, Lcom/perm/kate/SearchActivity;->long_click_listener:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 1012
    new-instance v2, Lcom/perm/kate/SearchActivity$27;

    invoke-direct {v2, p0, p0}, Lcom/perm/kate/SearchActivity$27;-><init>(Lcom/perm/kate/SearchActivity;Landroid/app/Activity;)V

    iput-object v2, p0, Lcom/perm/kate/SearchActivity;->messages_search_callback:Lcom/perm/kate/session/Callback;

    .line 1073
    new-instance v2, Lcom/perm/kate/SearchActivity$28;

    invoke-direct {v2, p0, p0}, Lcom/perm/kate/SearchActivity$28;-><init>(Lcom/perm/kate/SearchActivity;Landroid/app/Activity;)V

    iput-object v2, p0, Lcom/perm/kate/SearchActivity;->load_more_searchmessages_callback:Lcom/perm/kate/session/Callback;

    .line 1124
    new-instance v2, Lcom/perm/kate/SearchActivity$30;

    invoke-direct {v2, p0}, Lcom/perm/kate/SearchActivity$30;-><init>(Lcom/perm/kate/SearchActivity;)V

    iput-object v2, p0, Lcom/perm/kate/SearchActivity;->search_text_watcher:Landroid/text/TextWatcher;

    .line 1194
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/perm/kate/SearchActivity;->searchDialogsItems:Ljava/util/ArrayList;

    .line 1196
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/perm/kate/SearchActivity;->handler:Landroid/os/Handler;

    .line 1204
    new-instance v2, Lcom/perm/kate/SearchActivity$31;

    invoke-direct {v2, p0}, Lcom/perm/kate/SearchActivity$31;-><init>(Lcom/perm/kate/SearchActivity;)V

    iput-object v2, p0, Lcom/perm/kate/SearchActivity;->startDialogsSearchRunnable:Ljava/lang/Runnable;

    .line 1308
    new-instance v2, Lcom/perm/kate/SearchActivity$34;

    invoke-direct {v2, p0}, Lcom/perm/kate/SearchActivity$34;-><init>(Lcom/perm/kate/SearchActivity;)V

    iput-object v2, p0, Lcom/perm/kate/SearchActivity;->listener2:Landroid/widget/AdapterView$OnItemClickListener;

    .line 1362
    iput-object v0, p0, Lcom/perm/kate/SearchActivity;->news_page_size:Ljava/lang/Long;

    .line 1363
    iput-object v3, p0, Lcom/perm/kate/SearchActivity;->news_from:Ljava/lang/String;

    .line 1365
    new-instance v0, Lcom/perm/kate/SearchActivity$35;

    invoke-direct {v0, p0}, Lcom/perm/kate/SearchActivity$35;-><init>(Lcom/perm/kate/SearchActivity;)V

    iput-object v0, p0, Lcom/perm/kate/SearchActivity;->news_listener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 1375
    new-instance v0, Lcom/perm/kate/SearchActivity$36;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/SearchActivity$36;-><init>(Lcom/perm/kate/SearchActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/SearchActivity;->news_callback:Lcom/perm/kate/session/Callback;

    .line 1401
    new-instance v0, Lcom/perm/kate/SearchActivity$37;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/SearchActivity$37;-><init>(Lcom/perm/kate/SearchActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/SearchActivity;->news_load_more_callback:Lcom/perm/kate/session/Callback;

    .line 1423
    new-instance v0, Lcom/perm/kate/SearchActivity$38;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/SearchActivity$38;-><init>(Lcom/perm/kate/SearchActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/SearchActivity;->mentions_callback:Lcom/perm/kate/session/Callback;

    .line 1454
    new-instance v0, Lcom/perm/kate/SearchActivity$39;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/SearchActivity$39;-><init>(Lcom/perm/kate/SearchActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/SearchActivity;->mentions_load_more_callback:Lcom/perm/kate/session/Callback;

    .line 1515
    new-instance v0, Lcom/perm/kate/SearchActivity$41;

    invoke-direct {v0, p0}, Lcom/perm/kate/SearchActivity$41;-><init>(Lcom/perm/kate/SearchActivity;)V

    iput-object v0, p0, Lcom/perm/kate/SearchActivity;->history_listener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 1528
    iput-boolean v1, p0, Lcom/perm/kate/SearchActivity;->shownHistory:Z

    .line 1560
    new-instance v0, Lcom/perm/kate/SearchActivity$42;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/SearchActivity$42;-><init>(Lcom/perm/kate/SearchActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/SearchActivity;->docs_callback:Lcom/perm/kate/session/Callback;

    .line 1581
    new-instance v0, Lcom/perm/kate/SearchActivity$43;

    invoke-direct {v0, p0}, Lcom/perm/kate/SearchActivity$43;-><init>(Lcom/perm/kate/SearchActivity;)V

    iput-object v0, p0, Lcom/perm/kate/SearchActivity;->doc_listener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 1589
    new-instance v0, Lcom/perm/kate/SearchActivity$44;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/SearchActivity$44;-><init>(Lcom/perm/kate/SearchActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/SearchActivity;->docs_load_more_callback:Lcom/perm/kate/session/Callback;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/SearchActivity;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/perm/kate/SearchActivity;->onSearch()V

    return-void
.end method

.method static synthetic access$100(Lcom/perm/kate/SearchActivity;)Landroid/widget/EditText;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/perm/kate/SearchActivity;->tb_search:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/perm/kate/SearchActivity;)Lcom/perm/kate/session/Callback;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/perm/kate/SearchActivity;->video_callback:Lcom/perm/kate/session/Callback;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/perm/kate/SearchActivity;)Ljava/lang/Integer;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/perm/kate/SearchActivity;->sort:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/perm/kate/SearchActivity;)Ljava/lang/Integer;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/perm/kate/SearchActivity;->city:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/perm/kate/SearchActivity;)Ljava/lang/Integer;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/perm/kate/SearchActivity;->country:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/perm/kate/SearchActivity;)Ljava/lang/String;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/perm/kate/SearchActivity;->hometown:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/perm/kate/SearchActivity;)Ljava/lang/Integer;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/perm/kate/SearchActivity;->university_country:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/perm/kate/SearchActivity;)Ljava/lang/Integer;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/perm/kate/SearchActivity;->university:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/perm/kate/SearchActivity;)Ljava/lang/Integer;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/perm/kate/SearchActivity;->university_year:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/perm/kate/SearchActivity;)Ljava/lang/Integer;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/perm/kate/SearchActivity;->sex:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/perm/kate/SearchActivity;)Ljava/lang/Integer;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/perm/kate/SearchActivity;->status:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$200(Lcom/perm/kate/SearchActivity;)Lcom/perm/kate/SearchActivity$SearchType;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/perm/kate/SearchActivity;->searchType:Lcom/perm/kate/SearchActivity$SearchType;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/perm/kate/SearchActivity;)Ljava/lang/Integer;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/perm/kate/SearchActivity;->age_from:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$202(Lcom/perm/kate/SearchActivity;Lcom/perm/kate/SearchActivity$SearchType;)Lcom/perm/kate/SearchActivity$SearchType;
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/perm/kate/SearchActivity;->searchType:Lcom/perm/kate/SearchActivity$SearchType;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/perm/kate/SearchActivity;)Ljava/lang/Integer;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/perm/kate/SearchActivity;->age_to:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/perm/kate/SearchActivity;)Ljava/lang/Integer;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/perm/kate/SearchActivity;->birth_day:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/perm/kate/SearchActivity;)Ljava/lang/Integer;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/perm/kate/SearchActivity;->birth_month:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/perm/kate/SearchActivity;)Ljava/lang/Integer;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/perm/kate/SearchActivity;->birth_year:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/perm/kate/SearchActivity;)Ljava/lang/Integer;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/perm/kate/SearchActivity;->online:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/perm/kate/SearchActivity;)Ljava/lang/Integer;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/perm/kate/SearchActivity;->has_photo:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/perm/kate/SearchActivity;)Ljava/lang/Integer;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/perm/kate/SearchActivity;->school_country:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/perm/kate/SearchActivity;)Ljava/lang/Integer;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/perm/kate/SearchActivity;->school_city:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$2900(Lcom/perm/kate/SearchActivity;)Ljava/lang/Integer;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/perm/kate/SearchActivity;->school:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$300(Lcom/perm/kate/SearchActivity;)Lcom/perm/kate/SearchActivity$MessagesSearchType;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/perm/kate/SearchActivity;->messagesSearchType:Lcom/perm/kate/SearchActivity$MessagesSearchType;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/perm/kate/SearchActivity;)Ljava/lang/Integer;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/perm/kate/SearchActivity;->school_year:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$3100(Lcom/perm/kate/SearchActivity;)Ljava/lang/String;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/perm/kate/SearchActivity;->religion:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$3200(Lcom/perm/kate/SearchActivity;)Ljava/lang/String;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/perm/kate/SearchActivity;->company:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$3300(Lcom/perm/kate/SearchActivity;)Ljava/lang/String;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/perm/kate/SearchActivity;->position:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$3400(Lcom/perm/kate/SearchActivity;)J
    .locals 2

    .line 51
    iget-wide v0, p0, Lcom/perm/kate/SearchActivity;->univer:J

    return-wide v0
.end method

.method static synthetic access$3500(Lcom/perm/kate/SearchActivity;)Ljava/lang/Long;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/perm/kate/SearchActivity;->group_id:Ljava/lang/Long;

    return-object p0
.end method

.method static synthetic access$3600(Lcom/perm/kate/SearchActivity;)Lcom/perm/kate/session/Callback;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/perm/kate/SearchActivity;->user_callback:Lcom/perm/kate/session/Callback;

    return-object p0
.end method

.method static synthetic access$3700(Lcom/perm/kate/SearchActivity;)Lcom/perm/kate/session/Callback;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/perm/kate/SearchActivity;->group_callback:Lcom/perm/kate/session/Callback;

    return-object p0
.end method

.method static synthetic access$3800(Lcom/perm/kate/SearchActivity;)Ljava/lang/String;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/perm/kate/SearchActivity;->news_from:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$3802(Lcom/perm/kate/SearchActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/perm/kate/SearchActivity;->news_from:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3900(Lcom/perm/kate/SearchActivity;)Ljava/lang/Long;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/perm/kate/SearchActivity;->news_page_size:Ljava/lang/Long;

    return-object p0
.end method

.method static synthetic access$400(Lcom/perm/kate/SearchActivity;)Ljava/lang/Integer;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/perm/kate/SearchActivity;->performer_only:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$4000(Lcom/perm/kate/SearchActivity;)Lcom/perm/kate/session/Callback;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/perm/kate/SearchActivity;->news_callback:Lcom/perm/kate/session/Callback;

    return-object p0
.end method

.method static synthetic access$4100(Lcom/perm/kate/SearchActivity;)Lcom/perm/kate/session/Callback;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/perm/kate/SearchActivity;->mentions_callback:Lcom/perm/kate/session/Callback;

    return-object p0
.end method

.method static synthetic access$4200(Lcom/perm/kate/SearchActivity;)Lcom/perm/kate/session/Callback;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/perm/kate/SearchActivity;->docs_callback:Lcom/perm/kate/session/Callback;

    return-object p0
.end method

.method static synthetic access$4300(Lcom/perm/kate/SearchActivity;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/perm/kate/SearchActivity;->setHeaderTitleByType()V

    return-void
.end method

.method static synthetic access$4400(Lcom/perm/kate/SearchActivity;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/perm/kate/SearchActivity;->showAddParamsLayoutByType()V

    return-void
.end method

.method static synthetic access$4500(Lcom/perm/kate/SearchActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/perm/kate/SearchActivity;->audios:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$4502(Lcom/perm/kate/SearchActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/perm/kate/SearchActivity;->audios:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$4600(Lcom/perm/kate/SearchActivity;)Z
    .locals 0

    .line 51
    iget-boolean p0, p0, Lcom/perm/kate/SearchActivity;->select_audio:Z

    return p0
.end method

.method static synthetic access$4700(Lcom/perm/kate/SearchActivity;)Landroid/widget/Button;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/perm/kate/SearchActivity;->btn_attach:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$4800(Lcom/perm/kate/SearchActivity;)Landroid/widget/ListView;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/perm/kate/SearchActivity;->lv_search_list:Landroid/widget/ListView;

    return-object p0
.end method

.method static synthetic access$4900(Lcom/perm/kate/SearchActivity;)Z
    .locals 0

    .line 51
    iget-boolean p0, p0, Lcom/perm/kate/SearchActivity;->select_video:Z

    return p0
.end method

.method static synthetic access$500(Lcom/perm/kate/SearchActivity;)Lcom/perm/kate/session/Callback;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/perm/kate/SearchActivity;->audio_callback:Lcom/perm/kate/session/Callback;

    return-object p0
.end method

.method static synthetic access$5000(Lcom/perm/kate/SearchActivity;)Lcom/perm/kate/VideoMenuCallback;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/perm/kate/SearchActivity;->videoMenuCallback:Lcom/perm/kate/VideoMenuCallback;

    return-object p0
.end method

.method static synthetic access$5100(Lcom/perm/kate/SearchActivity;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/perm/kate/SearchActivity;->requeryOnUiThread()V

    return-void
.end method

.method static synthetic access$5200(Lcom/perm/kate/SearchActivity;)Z
    .locals 0

    .line 51
    iget-boolean p0, p0, Lcom/perm/kate/SearchActivity;->shownHistory:Z

    return p0
.end method

.method static synthetic access$5300(Lcom/perm/kate/SearchActivity;)I
    .locals 0

    .line 51
    iget p0, p0, Lcom/perm/kate/SearchActivity;->state:I

    return p0
.end method

.method static synthetic access$5302(Lcom/perm/kate/SearchActivity;I)I
    .locals 0

    .line 51
    iput p1, p0, Lcom/perm/kate/SearchActivity;->state:I

    return p1
.end method

.method static synthetic access$5400(Lcom/perm/kate/SearchActivity;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/perm/kate/SearchActivity;->loadMore()V

    return-void
.end method

.method static synthetic access$5500(Lcom/perm/kate/SearchActivity;)Lcom/perm/kate/session/Callback;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/perm/kate/SearchActivity;->callback_load_more:Lcom/perm/kate/session/Callback;

    return-object p0
.end method

.method static synthetic access$5600(Lcom/perm/kate/SearchActivity;)Lcom/perm/kate/session/Callback;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/perm/kate/SearchActivity;->callback_load_more_groups:Lcom/perm/kate/session/Callback;

    return-object p0
.end method

.method static synthetic access$5700(Lcom/perm/kate/SearchActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/perm/kate/SearchActivity;->searched_messages:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$5702(Lcom/perm/kate/SearchActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/perm/kate/SearchActivity;->searched_messages:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$5800(Lcom/perm/kate/SearchActivity;)Ljava/lang/Long;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/perm/kate/SearchActivity;->peer_id:Ljava/lang/Long;

    return-object p0
.end method

.method static synthetic access$5900(Lcom/perm/kate/SearchActivity;)I
    .locals 0

    .line 51
    iget p0, p0, Lcom/perm/kate/SearchActivity;->message_page_size:I

    return p0
.end method

.method static synthetic access$600(Lcom/perm/kate/SearchActivity;)Ljava/lang/Integer;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/perm/kate/SearchActivity;->video_sort:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$6000(Lcom/perm/kate/SearchActivity;)Lcom/perm/kate/session/Callback;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/perm/kate/SearchActivity;->load_more_searchmessages_callback:Lcom/perm/kate/session/Callback;

    return-object p0
.end method

.method static synthetic access$6100(Lcom/perm/kate/SearchActivity;)Lcom/perm/kate/session/Callback;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/perm/kate/SearchActivity;->news_load_more_callback:Lcom/perm/kate/session/Callback;

    return-object p0
.end method

.method static synthetic access$6200(Lcom/perm/kate/SearchActivity;)Lcom/perm/kate/session/Callback;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/perm/kate/SearchActivity;->mentions_load_more_callback:Lcom/perm/kate/session/Callback;

    return-object p0
.end method

.method static synthetic access$6300(Lcom/perm/kate/SearchActivity;)Lcom/perm/kate/session/Callback;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/perm/kate/SearchActivity;->docs_load_more_callback:Lcom/perm/kate/session/Callback;

    return-object p0
.end method

.method static synthetic access$6400(Lcom/perm/kate/SearchActivity;)Z
    .locals 0

    .line 51
    iget-boolean p0, p0, Lcom/perm/kate/SearchActivity;->select_user:Z

    return p0
.end method

.method static synthetic access$6500(Lcom/perm/kate/SearchActivity;)Lcom/perm/kate/session/Callback;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/perm/kate/SearchActivity;->messages_search_callback:Lcom/perm/kate/session/Callback;

    return-object p0
.end method

.method static synthetic access$6600(Lcom/perm/kate/SearchActivity;Lcom/perm/kate/api/Message;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/perm/kate/SearchActivity;->showMessage(Lcom/perm/kate/api/Message;)V

    return-void
.end method

.method static synthetic access$6700(Lcom/perm/kate/SearchActivity;JJ)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/perm/kate/SearchActivity;->showMessageThread(JJ)V

    return-void
.end method

.method static synthetic access$6800(Lcom/perm/kate/SearchActivity;Ljava/util/ArrayList;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/perm/kate/SearchActivity;->removeMessagesFromHiddenUsers(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$6900(Lcom/perm/kate/SearchActivity;Ljava/util/ArrayList;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/perm/kate/SearchActivity;->displaySearchedMessagesInUI(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$700(Lcom/perm/kate/SearchActivity;)Ljava/lang/Integer;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/perm/kate/SearchActivity;->hd:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$7000(Lcom/perm/kate/SearchActivity;Ljava/util/ArrayList;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/perm/kate/SearchActivity;->displaySearchedMessages(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$7100(Lcom/perm/kate/SearchActivity;)Landroid/widget/ImageButton;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/perm/kate/SearchActivity;->btn_clear:Landroid/widget/ImageButton;

    return-object p0
.end method

.method static synthetic access$7200(Lcom/perm/kate/SearchActivity;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/perm/kate/SearchActivity;->localDialogsSearch()V

    return-void
.end method

.method static synthetic access$7300(Lcom/perm/kate/SearchActivity;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/perm/kate/SearchActivity;->startHandlerDialogsSearch()V

    return-void
.end method

.method static synthetic access$7400(Lcom/perm/kate/SearchActivity;)Ljava/lang/String;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/perm/kate/SearchActivity;->last_query:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$7402(Lcom/perm/kate/SearchActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/perm/kate/SearchActivity;->last_query:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$7500(Lcom/perm/kate/SearchActivity;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/perm/kate/SearchActivity;->performDialogsSearch()V

    return-void
.end method

.method static synthetic access$7600(Lcom/perm/kate/SearchActivity;Ljava/util/ArrayList;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/perm/kate/SearchActivity;->modifySearchDialogsItems(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$7700(Lcom/perm/kate/SearchActivity;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/perm/kate/SearchActivity;->displaySearchedDialogs()V

    return-void
.end method

.method static synthetic access$7800(Lcom/perm/kate/SearchActivity;Lcom/perm/kate/api/Newsfeed;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/perm/kate/SearchActivity;->newsRequeryOnUiThread(Lcom/perm/kate/api/Newsfeed;)V

    return-void
.end method

.method static synthetic access$7900(Lcom/perm/kate/SearchActivity;Lcom/perm/kate/api/Newsfeed;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/perm/kate/SearchActivity;->getMissingUsersFromMentions(Lcom/perm/kate/api/Newsfeed;)V

    return-void
.end method

.method static synthetic access$800(Lcom/perm/kate/SearchActivity;)Ljava/lang/Integer;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/perm/kate/SearchActivity;->adult:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$900(Lcom/perm/kate/SearchActivity;)Ljava/lang/String;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/perm/kate/SearchActivity;->filters:Ljava/lang/String;

    return-object p0
.end method

.method private clearHistory()V
    .locals 1

    .line 1510
    invoke-static {p0}, Lcom/perm/kate/history/SearchHistoryHelper;->clearHistory(Landroid/content/Context;)V

    .line 1511
    iget-boolean v0, p0, Lcom/perm/kate/SearchActivity;->shownHistory:Z

    if-eqz v0, :cond_0

    .line 1512
    invoke-direct {p0}, Lcom/perm/kate/SearchActivity;->hideSearch()V

    :cond_0
    return-void
.end method

.method private displayHistory()V
    .locals 2

    .line 1530
    invoke-static {p0}, Lcom/perm/kate/history/SearchHistoryHelper;->getItems(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1531
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 1533
    :cond_0
    new-instance v1, Lcom/perm/kate/SearchHistoryAdapter;

    invoke-direct {v1, p0, v0}, Lcom/perm/kate/SearchHistoryAdapter;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;)V

    iput-object v1, p0, Lcom/perm/kate/SearchActivity;->history_adapter:Lcom/perm/kate/SearchHistoryAdapter;

    .line 1534
    iget-object v0, p0, Lcom/perm/kate/SearchActivity;->lv_search_list:Landroid/widget/ListView;

    if-eqz v0, :cond_1

    .line 1535
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1536
    iget-object v0, p0, Lcom/perm/kate/SearchActivity;->lv_search_list:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/perm/kate/SearchActivity;->history_listener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const/4 v0, 0x1

    .line 1537
    iput-boolean v0, p0, Lcom/perm/kate/SearchActivity;->shownHistory:Z

    :cond_1
    :goto_0
    return-void
.end method

.method private displaySearchedDialogs()V
    .locals 2

    .line 1299
    iget-object v0, p0, Lcom/perm/kate/SearchActivity;->lv_search_list:Landroid/widget/ListView;

    if-nez v0, :cond_0

    return-void

    .line 1301
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/SearchActivity;->messagesSearchType:Lcom/perm/kate/SearchActivity$MessagesSearchType;

    sget-object v1, Lcom/perm/kate/SearchActivity$MessagesSearchType;->DialogsSearch:Lcom/perm/kate/SearchActivity$MessagesSearchType;

    if-eq v0, v1, :cond_1

    return-void

    .line 1303
    :cond_1
    new-instance v0, Lcom/perm/kate/SearchedDialogsAdapter;

    iget-object v1, p0, Lcom/perm/kate/SearchActivity;->searchDialogsItems:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/SearchedDialogsAdapter;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/perm/kate/SearchActivity;->sd_adapter:Lcom/perm/kate/SearchedDialogsAdapter;

    .line 1304
    iget-object v1, p0, Lcom/perm/kate/SearchActivity;->lv_search_list:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1305
    iget-object v0, p0, Lcom/perm/kate/SearchActivity;->lv_search_list:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/perm/kate/SearchActivity;->listener2:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method private displaySearchedDialogsInUI()V
    .locals 1

    .line 1290
    new-instance v0, Lcom/perm/kate/SearchActivity$33;

    invoke-direct {v0, p0}, Lcom/perm/kate/SearchActivity$33;-><init>(Lcom/perm/kate/SearchActivity;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private displaySearchedMessages(Ljava/util/ArrayList;)V
    .locals 3

    .line 1118
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v1}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/perm/kate/db/DataHelper;->fetchUser(J)Lcom/perm/kate/api/User;

    move-result-object v0

    .line 1119
    new-instance v1, Lcom/perm/kate/SearchedMessagesAdapter;

    invoke-direct {v1, p0, p1, v0}, Lcom/perm/kate/SearchedMessagesAdapter;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;Lcom/perm/kate/api/User;)V

    .line 1120
    iget-object p1, p0, Lcom/perm/kate/SearchActivity;->lv_search_list:Landroid/widget/ListView;

    if-eqz p1, :cond_0

    .line 1121
    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_0
    return-void
.end method

.method private displaySearchedMessagesInUI(Ljava/util/ArrayList;)V
    .locals 1

    .line 1109
    new-instance v0, Lcom/perm/kate/SearchActivity$29;

    invoke-direct {v0, p0, p1}, Lcom/perm/kate/SearchActivity$29;-><init>(Lcom/perm/kate/SearchActivity;Ljava/util/ArrayList;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private doSearch(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    .line 274
    iput v0, p0, Lcom/perm/kate/SearchActivity;->state:I

    .line 275
    sget-object v0, Lcom/perm/kate/SearchActivity$45;->$SwitchMap$com$perm$kate$SearchActivity$SearchType:[I

    iget-object v1, p0, Lcom/perm/kate/SearchActivity;->searchType:Lcom/perm/kate/SearchActivity$SearchType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x1

    .line 302
    invoke-virtual {p0, v0}, Lcom/perm/kate/SearchActivity;->showSearchTypeDialog(Z)V

    .line 303
    iget-object v0, p0, Lcom/perm/kate/SearchActivity;->lv_search_list:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_0

    .line 298
    :pswitch_0
    invoke-direct {p0}, Lcom/perm/kate/SearchActivity;->hideSearch()V

    .line 299
    iget-object v0, p0, Lcom/perm/kate/SearchActivity;->lv_search_list:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/perm/kate/SearchActivity;->doc_listener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_0

    .line 294
    :pswitch_1
    invoke-direct {p0}, Lcom/perm/kate/SearchActivity;->hideSearch()V

    .line 295
    iget-object v0, p0, Lcom/perm/kate/SearchActivity;->lv_search_list:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/perm/kate/SearchActivity;->news_listener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_0

    .line 289
    :pswitch_2
    invoke-direct {p0}, Lcom/perm/kate/SearchActivity;->hideSearch()V

    .line 290
    iget-object v0, p0, Lcom/perm/kate/SearchActivity;->lv_search_list:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/perm/kate/SearchActivity;->group_listener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_0

    .line 285
    :pswitch_3
    invoke-direct {p0}, Lcom/perm/kate/SearchActivity;->hideSearch()V

    .line 286
    iget-object v0, p0, Lcom/perm/kate/SearchActivity;->lv_search_list:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/perm/kate/SearchActivity;->user_listener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_0

    .line 281
    :pswitch_4
    invoke-direct {p0}, Lcom/perm/kate/SearchActivity;->hideSearch()V

    .line 282
    iget-object v0, p0, Lcom/perm/kate/SearchActivity;->lv_search_list:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/perm/kate/SearchActivity;->video_listener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_0

    .line 277
    :pswitch_5
    invoke-direct {p0}, Lcom/perm/kate/SearchActivity;->hideSearch()V

    .line 278
    iget-object v0, p0, Lcom/perm/kate/SearchActivity;->lv_search_list:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/perm/kate/SearchActivity;->audio_listener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 306
    :goto_0
    new-instance v0, Lcom/perm/kate/SearchActivity$4;

    invoke-direct {v0, p0, p1}, Lcom/perm/kate/SearchActivity$4;-><init>(Lcom/perm/kate/SearchActivity;Ljava/lang/String;)V

    .line 340
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getMissingUsersFromMentions(Lcom/perm/kate/api/Newsfeed;)V
    .locals 5

    .line 1443
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1444
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1445
    iget-object p1, p1, Lcom/perm/kate/api/Newsfeed;->items:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perm/kate/api/NewsItem;

    .line 1446
    iget-wide v3, v2, Lcom/perm/kate/api/NewsItem;->from_id:J

    invoke-static {v3, v4}, Lcom/perm/kate/api/User;->isVirtualUser(J)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1447
    iget-wide v2, v2, Lcom/perm/kate/api/NewsItem;->from_id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1449
    :cond_0
    iget-wide v2, v2, Lcom/perm/kate/api/NewsItem;->from_id:J

    invoke-static {v2, v3}, Lcom/perm/kate/api/User;->virtualUserIdToGroupId(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1450
    :cond_1
    invoke-static {v0}, Lcom/perm/kate/KApplication;->getMissingUsers(Ljava/util/ArrayList;)Z

    .line 1451
    invoke-static {v1}, Lcom/perm/kate/KApplication;->getMissingGroups(Ljava/util/ArrayList;)Z

    return-void
.end method

.method private hideSearch()V
    .locals 2

    .line 1542
    iget-boolean v0, p0, Lcom/perm/kate/SearchActivity;->shownHistory:Z

    if-nez v0, :cond_0

    return-void

    .line 1544
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/SearchActivity;->history_adapter:Lcom/perm/kate/SearchHistoryAdapter;

    if-nez v0, :cond_1

    return-void

    .line 1546
    :cond_1
    iget-object v0, p0, Lcom/perm/kate/SearchActivity;->lv_search_list:Landroid/widget/ListView;

    if-nez v0, :cond_2

    return-void

    .line 1548
    :cond_2
    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    instance-of v0, v0, Lcom/perm/kate/SearchHistoryAdapter;

    if-eqz v0, :cond_3

    .line 1549
    iget-object v0, p0, Lcom/perm/kate/SearchActivity;->lv_search_list:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1550
    iget-object v0, p0, Lcom/perm/kate/SearchActivity;->lv_search_list:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1551
    iget-object v0, p0, Lcom/perm/kate/SearchActivity;->history_adapter:Lcom/perm/kate/SearchHistoryAdapter;

    invoke-virtual {v0}, Lcom/perm/kate/SearchHistoryAdapter;->Destroy()V

    .line 1552
    iput-object v1, p0, Lcom/perm/kate/SearchActivity;->history_adapter:Lcom/perm/kate/SearchHistoryAdapter;

    :cond_3
    const/4 v0, 0x0

    .line 1554
    iput-boolean v0, p0, Lcom/perm/kate/SearchActivity;->shownHistory:Z

    return-void
.end method

.method private loadMore()V
    .locals 1

    .line 602
    new-instance v0, Lcom/perm/kate/SearchActivity$14;

    invoke-direct {v0, p0}, Lcom/perm/kate/SearchActivity$14;-><init>(Lcom/perm/kate/SearchActivity;)V

    .line 649
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private localDialogsSearch()V
    .locals 8

    .line 1157
    iget-object v0, p0, Lcom/perm/kate/SearchActivity;->tb_search:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1158
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1159
    sget-object v1, Lcom/perm/kate/SearchActivity$MessagesSearchType;->DialogsSearch:Lcom/perm/kate/SearchActivity$MessagesSearchType;

    iput-object v1, p0, Lcom/perm/kate/SearchActivity;->messagesSearchType:Lcom/perm/kate/SearchActivity$MessagesSearchType;

    .line 1160
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v1}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 1161
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/perm/kate/SearchActivity;->searchDialogsItems:Ljava/util/ArrayList;

    .line 1162
    sget-object v2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4, v0}, Lcom/perm/kate/db/DataHelper;->fetchTopFriends(JLjava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1165
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_3

    .line 1166
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1167
    new-instance v1, Lcom/perm/kate/api/SearchDialogItem;

    invoke-direct {v1}, Lcom/perm/kate/api/SearchDialogItem;-><init>()V

    .line 1168
    new-instance v2, Lcom/perm/kate/api/User;

    invoke-direct {v2}, Lcom/perm/kate/api/User;-><init>()V

    const-string v3, "_id"

    .line 1169
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v2, Lcom/perm/kate/api/User;->uid:J

    const-string v3, "first_name"

    .line 1170
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    const-string v3, "last_name"

    .line 1171
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    const-string v3, "photo_medium_rec"

    .line 1172
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/perm/kate/api/User;->photo_medium_rec:Ljava/lang/String;

    const-string v3, "online"

    .line 1173
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    const-wide/16 v5, 0x1

    cmp-long v7, v3, v5

    if-nez v7, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v2, Lcom/perm/kate/api/User;->online:Ljava/lang/Boolean;

    .line 1174
    iput-object v2, v1, Lcom/perm/kate/api/SearchDialogItem;->user:Lcom/perm/kate/api/User;

    .line 1176
    sget-object v2, Lcom/perm/kate/api/SearchDialogItem$SDIType;->USER:Lcom/perm/kate/api/SearchDialogItem$SDIType;

    iput-object v2, v1, Lcom/perm/kate/api/SearchDialogItem;->type:Lcom/perm/kate/api/SearchDialogItem$SDIType;

    .line 1177
    iget-object v2, p0, Lcom/perm/kate/SearchActivity;->searchDialogsItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1178
    invoke-interface {v0}, Landroid/database/Cursor;->getPosition()I

    move-result v1

    const/16 v2, 0x14

    if-le v1, v2, :cond_1

    .line 1182
    :cond_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1183
    invoke-direct {p0}, Lcom/perm/kate/SearchActivity;->displaySearchedDialogsInUI()V

    goto :goto_1

    .line 1185
    :cond_4
    iget-object v0, p0, Lcom/perm/kate/SearchActivity;->messagesSearchType:Lcom/perm/kate/SearchActivity$MessagesSearchType;

    sget-object v1, Lcom/perm/kate/SearchActivity$MessagesSearchType;->None:Lcom/perm/kate/SearchActivity$MessagesSearchType;

    if-eq v0, v1, :cond_5

    .line 1186
    iput-object v1, p0, Lcom/perm/kate/SearchActivity;->messagesSearchType:Lcom/perm/kate/SearchActivity$MessagesSearchType;

    .line 1188
    :cond_5
    iget-object v0, p0, Lcom/perm/kate/SearchActivity;->searchDialogsItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1189
    iget-object v0, p0, Lcom/perm/kate/SearchActivity;->sd_adapter:Lcom/perm/kate/SearchedDialogsAdapter;

    if-eqz v0, :cond_6

    .line 1190
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_6
    :goto_1
    return-void
.end method

.method private modifySearchDialogsItems(Ljava/util/ArrayList;)V
    .locals 7

    if-eqz p1, :cond_c

    .line 1260
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_5

    :cond_0
    const/4 v0, 0x0

    .line 1265
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 1266
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/SearchDialogItem;

    .line 1267
    iget-object v2, v1, Lcom/perm/kate/api/SearchDialogItem;->user:Lcom/perm/kate/api/User;

    const-wide/16 v3, 0x0

    if-eqz v2, :cond_1

    iget-wide v5, v2, Lcom/perm/kate/api/User;->uid:J

    goto :goto_1

    :cond_1
    move-wide v5, v3

    .line 1268
    :goto_1
    iget-object v1, v1, Lcom/perm/kate/api/SearchDialogItem;->chat:Lcom/perm/kate/api/Message;

    if-eqz v1, :cond_2

    iget-object v1, v1, Lcom/perm/kate/api/Message;->chat_id:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 1269
    :cond_2
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/perm/kate/ThreadIdHelper;->makeThreadId(Ljava/lang/Long;Ljava/lang/Long;)J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/perm/kate/HiddenChats;->isHiddenNow(J)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1270
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1275
    :cond_4
    iget-object v0, p0, Lcom/perm/kate/SearchActivity;->searchDialogsItems:Ljava/util/ArrayList;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_5

    goto :goto_4

    .line 1278
    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1279
    iget-object v1, p0, Lcom/perm/kate/SearchActivity;->searchDialogsItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perm/kate/api/SearchDialogItem;

    .line 1280
    iget-object v3, v2, Lcom/perm/kate/api/SearchDialogItem;->type:Lcom/perm/kate/api/SearchDialogItem$SDIType;

    sget-object v4, Lcom/perm/kate/api/SearchDialogItem$SDIType;->USER:Lcom/perm/kate/api/SearchDialogItem$SDIType;

    if-ne v3, v4, :cond_6

    .line 1281
    iget-object v2, v2, Lcom/perm/kate/api/SearchDialogItem;->user:Lcom/perm/kate/api/User;

    iget-wide v2, v2, Lcom/perm/kate/api/User;->uid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1282
    :cond_7
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_8
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/SearchDialogItem;

    .line 1283
    iget-object v2, v1, Lcom/perm/kate/api/SearchDialogItem;->type:Lcom/perm/kate/api/SearchDialogItem$SDIType;

    sget-object v3, Lcom/perm/kate/api/SearchDialogItem$SDIType;->USER:Lcom/perm/kate/api/SearchDialogItem$SDIType;

    if-ne v2, v3, :cond_9

    if-ne v2, v3, :cond_8

    iget-object v2, v1, Lcom/perm/kate/api/SearchDialogItem;->user:Lcom/perm/kate/api/User;

    iget-wide v2, v2, Lcom/perm/kate/api/User;->uid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 1284
    :cond_9
    iget-object v2, p0, Lcom/perm/kate/SearchActivity;->searchDialogsItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1276
    :cond_a
    :goto_4
    iput-object p1, p0, Lcom/perm/kate/SearchActivity;->searchDialogsItems:Ljava/util/ArrayList;

    .line 1286
    :cond_b
    invoke-direct {p0}, Lcom/perm/kate/SearchActivity;->displaySearchedDialogsInUI()V

    :cond_c
    :goto_5
    return-void
.end method

.method private newsRequeryOnUiThread(Lcom/perm/kate/api/Newsfeed;)V
    .locals 1

    .line 1473
    new-instance v0, Lcom/perm/kate/SearchActivity$40;

    invoke-direct {v0, p0, p1}, Lcom/perm/kate/SearchActivity$40;-><init>(Lcom/perm/kate/SearchActivity;Lcom/perm/kate/api/Newsfeed;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private onSearch()V
    .locals 3

    .line 257
    iget-object v0, p0, Lcom/perm/kate/SearchActivity;->tb_search:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 258
    iget-object v1, p0, Lcom/perm/kate/SearchActivity;->searchType:Lcom/perm/kate/SearchActivity$SearchType;

    sget-object v2, Lcom/perm/kate/SearchActivity$SearchType;->Dialogs:Lcom/perm/kate/SearchActivity$SearchType;

    if-ne v1, v2, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    const-string v1, ""

    .line 260
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/perm/kate/SearchActivity;->searchType:Lcom/perm/kate/SearchActivity$SearchType;

    sget-object v2, Lcom/perm/kate/SearchActivity$SearchType;->User:Lcom/perm/kate/SearchActivity$SearchType;

    if-ne v1, v2, :cond_5

    .line 261
    :cond_2
    iget-object v1, p0, Lcom/perm/kate/SearchActivity;->searchType:Lcom/perm/kate/SearchActivity$SearchType;

    sget-object v2, Lcom/perm/kate/SearchActivity$SearchType;->None:Lcom/perm/kate/SearchActivity$SearchType;

    if-ne v1, v2, :cond_3

    const/4 v0, 0x1

    .line 262
    invoke-virtual {p0, v0}, Lcom/perm/kate/SearchActivity;->showSearchTypeDialog(Z)V

    goto :goto_0

    .line 263
    :cond_3
    sget-object v2, Lcom/perm/kate/SearchActivity$SearchType;->Message:Lcom/perm/kate/SearchActivity$SearchType;

    if-ne v1, v2, :cond_4

    .line 264
    invoke-static {v0, p0}, Lcom/perm/kate/history/SearchHistoryHelper;->addItem(Ljava/lang/String;Landroid/content/Context;)V

    .line 265
    invoke-virtual {p0}, Lcom/perm/kate/SearchActivity;->performMessagesSearch()V

    goto :goto_0

    .line 267
    :cond_4
    invoke-static {v0, p0}, Lcom/perm/kate/history/SearchHistoryHelper;->addItem(Ljava/lang/String;Landroid/content/Context;)V

    .line 268
    invoke-direct {p0, v0}, Lcom/perm/kate/SearchActivity;->doSearch(Ljava/lang/String;)V

    :cond_5
    :goto_0
    return-void
.end method

.method private performDialogsSearch()V
    .locals 3

    .line 1217
    iget-object v0, p0, Lcom/perm/kate/SearchActivity;->messagesSearchType:Lcom/perm/kate/SearchActivity$MessagesSearchType;

    sget-object v1, Lcom/perm/kate/SearchActivity$MessagesSearchType;->DialogsSearch:Lcom/perm/kate/SearchActivity$MessagesSearchType;

    if-eq v0, v1, :cond_0

    return-void

    .line 1219
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/SearchActivity;->tb_search:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1220
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    .line 1221
    iput v1, p0, Lcom/perm/kate/SearchActivity;->state:I

    .line 1222
    iget-object v1, p0, Lcom/perm/kate/SearchActivity;->lv_search_list:Landroid/widget/ListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1223
    iget-object v1, p0, Lcom/perm/kate/SearchActivity;->lv_search_list:Landroid/widget/ListView;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 1224
    new-instance v1, Lcom/perm/kate/SearchActivity$32;

    invoke-direct {v1, p0, v0}, Lcom/perm/kate/SearchActivity$32;-><init>(Lcom/perm/kate/SearchActivity;Ljava/lang/String;)V

    .line 1251
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 1253
    :cond_1
    iget-object v0, p0, Lcom/perm/kate/SearchActivity;->messagesSearchType:Lcom/perm/kate/SearchActivity$MessagesSearchType;

    sget-object v1, Lcom/perm/kate/SearchActivity$MessagesSearchType;->None:Lcom/perm/kate/SearchActivity$MessagesSearchType;

    if-eq v0, v1, :cond_2

    .line 1254
    iput-object v1, p0, Lcom/perm/kate/SearchActivity;->messagesSearchType:Lcom/perm/kate/SearchActivity$MessagesSearchType;

    :cond_2
    :goto_0
    return-void
.end method

.method private removeMessagesFromHiddenUsers(Ljava/util/ArrayList;)V
    .locals 5

    const/4 v0, 0x0

    .line 1064
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1065
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/Message;

    .line 1066
    iget-object v2, v1, Lcom/perm/kate/api/Message;->chat_id:Ljava/lang/Long;

    iget-wide v3, v1, Lcom/perm/kate/api/Message;->uid:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/perm/kate/ThreadIdHelper;->makeThreadId(Ljava/lang/Long;Ljava/lang/Long;)J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/perm/kate/HiddenChats;->isHiddenNow(J)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1067
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private requeryOnUiThread()V
    .locals 1

    .line 653
    new-instance v0, Lcom/perm/kate/SearchActivity$15;

    invoke-direct {v0, p0}, Lcom/perm/kate/SearchActivity$15;-><init>(Lcom/perm/kate/SearchActivity;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private setButtonLabelBySearchParams()V
    .locals 2

    .line 720
    iget-object v0, p0, Lcom/perm/kate/SearchActivity;->btn_add_parameters:Landroid/widget/Button;

    if-nez v0, :cond_0

    return-void

    .line 722
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/SearchActivity;->label_for_button:Ljava/lang/String;

    invoke-static {v0}, Lcom/perm/kate/Helper;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 723
    iget-object v0, p0, Lcom/perm/kate/SearchActivity;->btn_add_parameters:Landroid/widget/Button;

    iget-object v1, p0, Lcom/perm/kate/SearchActivity;->label_for_button:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 725
    :cond_1
    iget-object v0, p0, Lcom/perm/kate/SearchActivity;->btn_add_parameters:Landroid/widget/Button;

    const v1, 0x7f0f0187

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    :goto_0
    return-void
.end method

.method private setHeaderTitleByType()V
    .locals 5

    .line 197
    iget-object v0, p0, Lcom/perm/kate/SearchActivity;->searchType:Lcom/perm/kate/SearchActivity$SearchType;

    sget-object v1, Lcom/perm/kate/SearchActivity$SearchType;->Message:Lcom/perm/kate/SearchActivity$SearchType;

    if-eq v0, v1, :cond_9

    sget-object v1, Lcom/perm/kate/SearchActivity$SearchType;->Dialogs:Lcom/perm/kate/SearchActivity$SearchType;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 199
    :cond_0
    sget-object v1, Lcom/perm/kate/SearchActivity$SearchType;->Audio:Lcom/perm/kate/SearchActivity$SearchType;

    if-ne v0, v1, :cond_1

    const v0, 0x7f0f04ea

    goto :goto_1

    .line 201
    :cond_1
    sget-object v1, Lcom/perm/kate/SearchActivity$SearchType;->Video:Lcom/perm/kate/SearchActivity$SearchType;

    if-ne v0, v1, :cond_2

    const v0, 0x7f0f051d

    goto :goto_1

    .line 203
    :cond_2
    sget-object v1, Lcom/perm/kate/SearchActivity$SearchType;->Group:Lcom/perm/kate/SearchActivity$SearchType;

    if-ne v0, v1, :cond_3

    const v0, 0x7f0f010d

    goto :goto_1

    .line 205
    :cond_3
    sget-object v1, Lcom/perm/kate/SearchActivity$SearchType;->User:Lcom/perm/kate/SearchActivity$SearchType;

    if-ne v0, v1, :cond_5

    .line 206
    iget-object v0, p0, Lcom/perm/kate/SearchActivity;->group_id:Ljava/lang/Long;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_4

    const v0, 0x7f0f02ab

    goto :goto_1

    :cond_4
    const v0, 0x7f0f04c1

    goto :goto_1

    .line 210
    :cond_5
    sget-object v1, Lcom/perm/kate/SearchActivity$SearchType;->News:Lcom/perm/kate/SearchActivity$SearchType;

    if-ne v0, v1, :cond_6

    const v0, 0x7f0f036f

    goto :goto_1

    .line 212
    :cond_6
    sget-object v1, Lcom/perm/kate/SearchActivity$SearchType;->Mentions:Lcom/perm/kate/SearchActivity$SearchType;

    if-ne v0, v1, :cond_7

    const v0, 0x7f0f0332

    goto :goto_1

    .line 214
    :cond_7
    sget-object v1, Lcom/perm/kate/SearchActivity$SearchType;->Doc:Lcom/perm/kate/SearchActivity$SearchType;

    if-ne v0, v1, :cond_8

    const v0, 0x7f0f00c6

    goto :goto_1

    :cond_8
    const v0, 0x7f0f0239

    goto :goto_1

    :cond_9
    :goto_0
    const v0, 0x7f0f0231

    .line 218
    :goto_1
    invoke-virtual {p0, v0}, Lcom/perm/kate/BaseActivity;->setHeaderTitle(I)V

    return-void
.end method

.method private showAddParamsLayoutByType()V
    .locals 3

    .line 191
    iget-object v0, p0, Lcom/perm/kate/SearchActivity;->ll_add_parameters:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/perm/kate/SearchActivity;->searchType:Lcom/perm/kate/SearchActivity$SearchType;

    sget-object v2, Lcom/perm/kate/SearchActivity$SearchType;->User:Lcom/perm/kate/SearchActivity$SearchType;

    if-eq v1, v2, :cond_1

    sget-object v2, Lcom/perm/kate/SearchActivity$SearchType;->Video:Lcom/perm/kate/SearchActivity$SearchType;

    if-eq v1, v2, :cond_1

    sget-object v2, Lcom/perm/kate/SearchActivity$SearchType;->Audio:Lcom/perm/kate/SearchActivity$SearchType;

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method private showMessage(Lcom/perm/kate/api/Message;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 1354
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/perm/kate/DialogAttachmentsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1355
    iget-object v1, p1, Lcom/perm/kate/api/Message;->chat_id:Ljava/lang/Long;

    const-string v2, "chat_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1356
    iget-wide v1, p1, Lcom/perm/kate/api/Message;->uid:J

    const-string v3, "user_id"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1357
    iget-wide v1, p1, Lcom/perm/kate/api/Message;->mid:J

    const-string p1, "message_id"

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1358
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private showMessageThread(JJ)V
    .locals 4

    .line 1341
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1342
    const-class v1, Lcom/perm/kate/MessageThreadActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-wide/16 v1, 0x0

    cmp-long v3, p3, v1

    if-lez v3, :cond_0

    const-string p1, "com.perm.kate.chat_id"

    .line 1344
    invoke-virtual {v0, p1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    const-string p3, "com.perm.kate.message_uid"

    .line 1346
    invoke-virtual {v0, p3, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1347
    :goto_0
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private startHandlerDialogsSearch()V
    .locals 4

    .line 1199
    sget-object v0, Lcom/perm/kate/SearchActivity$MessagesSearchType;->DialogsSearch:Lcom/perm/kate/SearchActivity$MessagesSearchType;

    iput-object v0, p0, Lcom/perm/kate/SearchActivity;->messagesSearchType:Lcom/perm/kate/SearchActivity$MessagesSearchType;

    .line 1200
    iget-object v0, p0, Lcom/perm/kate/SearchActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/perm/kate/SearchActivity;->startDialogsSearchRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1201
    iget-object v0, p0, Lcom/perm/kate/SearchActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/perm/kate/SearchActivity;->startDialogsSearchRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x258

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method protected fillMenuItems(Landroid/view/Menu;)Z
    .locals 3

    .line 1494
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    const/4 v0, 0x0

    const v1, 0x7f09016a

    const v2, 0x7f0f01cf

    .line 1495
    invoke-interface {p1, v0, v1, v0, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    const/4 p1, 0x1

    return p1
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    const/4 v0, 0x1

    const-string v1, "com.perm.kate.sort"

    const/4 v2, 0x0

    if-ne p1, v0, :cond_0

    if-eqz p3, :cond_0

    .line 783
    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/SearchActivity;->sort:Ljava/lang/Integer;

    const-string v0, "com.perm.kate.city"

    .line 784
    invoke-virtual {p3, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/SearchActivity;->city:Ljava/lang/Integer;

    const-string v0, "com.perm.kate.country"

    .line 785
    invoke-virtual {p3, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/SearchActivity;->country:Ljava/lang/Integer;

    const-wide/16 v3, 0x0

    const-string v0, "univer"

    .line 786
    invoke-virtual {p3, v0, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/perm/kate/SearchActivity;->univer:J

    const-string v0, "com.perm.kate.hometown"

    .line 787
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/SearchActivity;->hometown:Ljava/lang/String;

    const-string v0, "com.perm.kate.university_country"

    .line 788
    invoke-virtual {p3, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/SearchActivity;->university_country:Ljava/lang/Integer;

    const-string v0, "com.perm.kate.university"

    .line 789
    invoke-virtual {p3, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/SearchActivity;->university:Ljava/lang/Integer;

    const-string v0, "com.perm.kate.university_year"

    .line 790
    invoke-virtual {p3, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/SearchActivity;->university_year:Ljava/lang/Integer;

    const-string v0, "com.perm.kate.sex"

    .line 791
    invoke-virtual {p3, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/SearchActivity;->sex:Ljava/lang/Integer;

    const-string v0, "com.perm.kate.status"

    .line 792
    invoke-virtual {p3, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/SearchActivity;->status:Ljava/lang/Integer;

    const-string v0, "com.perm.kate.age_from"

    .line 793
    invoke-virtual {p3, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/SearchActivity;->age_from:Ljava/lang/Integer;

    const-string v0, "com.perm.kate.age_to"

    .line 794
    invoke-virtual {p3, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/SearchActivity;->age_to:Ljava/lang/Integer;

    const-string v0, "com.perm.kate.birth_day"

    .line 795
    invoke-virtual {p3, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/SearchActivity;->birth_day:Ljava/lang/Integer;

    const-string v0, "com.perm.kate.birth_month"

    .line 796
    invoke-virtual {p3, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/SearchActivity;->birth_month:Ljava/lang/Integer;

    const-string v0, "com.perm.kate.birth_year"

    .line 797
    invoke-virtual {p3, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/SearchActivity;->birth_year:Ljava/lang/Integer;

    const-string v0, "com.perm.kate.online"

    .line 798
    invoke-virtual {p3, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/SearchActivity;->online:Ljava/lang/Integer;

    const-string v0, "com.perm.kate.has_photo"

    .line 799
    invoke-virtual {p3, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/SearchActivity;->has_photo:Ljava/lang/Integer;

    const-string v0, "com.perm.kate.school_country"

    .line 800
    invoke-virtual {p3, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/SearchActivity;->school_country:Ljava/lang/Integer;

    const-string v0, "com.perm.kate.school_city"

    .line 801
    invoke-virtual {p3, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/SearchActivity;->school_city:Ljava/lang/Integer;

    const-string v0, "com.perm.kate.school"

    .line 802
    invoke-virtual {p3, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/SearchActivity;->school:Ljava/lang/Integer;

    const-string v0, "com.perm.kate.school_year"

    .line 803
    invoke-virtual {p3, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/SearchActivity;->school_year:Ljava/lang/Integer;

    const-string v0, "com.perm.kate.religion"

    .line 804
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/SearchActivity;->religion:Ljava/lang/String;

    const-string v0, "com.perm.kate.company"

    .line 805
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/SearchActivity;->company:Ljava/lang/String;

    const-string v0, "com.perm.kate.position"

    .line 806
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/SearchActivity;->position:Ljava/lang/String;

    const-string v0, "com.perm.kate.label_for_button"

    .line 807
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/SearchActivity;->label_for_button:Ljava/lang/String;

    .line 808
    invoke-direct {p0}, Lcom/perm/kate/SearchActivity;->setButtonLabelBySearchParams()V

    .line 809
    invoke-direct {p0}, Lcom/perm/kate/SearchActivity;->onSearch()V

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    if-eqz p3, :cond_1

    const-string v3, "com.perm.kate.adult"

    .line 814
    invoke-virtual {p3, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Lcom/perm/kate/SearchActivity;->adult:Ljava/lang/Integer;

    const-string v3, "com.perm.kate.filters"

    .line 815
    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/perm/kate/SearchActivity;->filters:Ljava/lang/String;

    .line 816
    invoke-virtual {p3, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/SearchActivity;->video_sort:Ljava/lang/Integer;

    const-string v0, "com.perm.kate.hd"

    .line 817
    invoke-virtual {p3, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/SearchActivity;->hd:Ljava/lang/Integer;

    .line 818
    invoke-direct {p0}, Lcom/perm/kate/SearchActivity;->onSearch()V

    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    if-eqz p3, :cond_2

    const-string v0, "com.perm.kate.performer_only"

    .line 823
    invoke-virtual {p3, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/SearchActivity;->performer_only:Ljava/lang/Integer;

    .line 824
    invoke-direct {p0}, Lcom/perm/kate/SearchActivity;->onSearch()V

    .line 828
    :cond_2
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 17

    move-object/from16 v0, p0

    .line 81
    invoke-super/range {p0 .. p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const v1, 0x7f0c010d

    .line 82
    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseActivity;->setContentView(I)V

    .line 83
    invoke-virtual/range {p0 .. p0}, Lcom/perm/kate/BaseActivity;->setupMenuButton()V

    .line 84
    invoke-virtual/range {p0 .. p0}, Lcom/perm/kate/BaseActivity;->setButtonsBg()V

    .line 85
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.perm.kate.select_audio"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/perm/kate/SearchActivity;->select_audio:Z

    .line 86
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.perm.kate.select_video"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/perm/kate/SearchActivity;->select_video:Z

    .line 87
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.perm.kate.select_user"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/perm/kate/SearchActivity;->select_user:Z

    .line 88
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.perm.kate.search_audio"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 89
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v4, "com.perm.kate.search_video"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 90
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "com.perm.kate.search_group"

    invoke-virtual {v4, v5, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 91
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "com.perm.kate.search_user"

    invoke-virtual {v5, v6, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 92
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "com.perm.kate.search_news"

    invoke-virtual {v6, v7, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    .line 93
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "mentions"

    invoke-virtual {v7, v8, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    .line 94
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "com.perm.kate.members_for_group"

    const-wide/16 v10, 0x0

    invoke-virtual {v8, v9, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    .line 95
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v12

    const-string v13, "com.perm.kate.search_messages"

    invoke-virtual {v12, v13, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v12

    .line 96
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v13

    const-string v14, "search_dialogs"

    invoke-virtual {v13, v14, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v13

    .line 97
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v14

    const-string v15, "com.perm.kate.peer_id"

    invoke-virtual {v14, v15, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v14

    cmp-long v16, v8, v10

    if-lez v16, :cond_0

    .line 99
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    iput-object v8, v0, Lcom/perm/kate/SearchActivity;->group_id:Ljava/lang/Long;

    :cond_0
    cmp-long v8, v14, v10

    if-eqz v8, :cond_1

    .line 101
    sget-object v8, Lcom/perm/kate/SearchActivity$MessagesSearchType;->UserMessagesSearch:Lcom/perm/kate/SearchActivity$MessagesSearchType;

    iput-object v8, v0, Lcom/perm/kate/SearchActivity;->messagesSearchType:Lcom/perm/kate/SearchActivity$MessagesSearchType;

    .line 102
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    iput-object v8, v0, Lcom/perm/kate/SearchActivity;->peer_id:Ljava/lang/Long;

    .line 104
    :cond_1
    iget-boolean v8, v0, Lcom/perm/kate/SearchActivity;->select_audio:Z

    if-nez v8, :cond_b

    if-eqz v1, :cond_2

    goto :goto_2

    .line 106
    :cond_2
    iget-boolean v8, v0, Lcom/perm/kate/SearchActivity;->select_video:Z

    if-nez v8, :cond_a

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    if-eqz v4, :cond_4

    .line 109
    sget-object v2, Lcom/perm/kate/SearchActivity$SearchType;->Group:Lcom/perm/kate/SearchActivity$SearchType;

    iput-object v2, v0, Lcom/perm/kate/SearchActivity;->searchType:Lcom/perm/kate/SearchActivity$SearchType;

    goto :goto_3

    .line 110
    :cond_4
    iget-boolean v2, v0, Lcom/perm/kate/SearchActivity;->select_user:Z

    if-nez v2, :cond_9

    if-eqz v5, :cond_5

    goto :goto_0

    :cond_5
    if-eqz v6, :cond_6

    .line 113
    sget-object v2, Lcom/perm/kate/SearchActivity$SearchType;->News:Lcom/perm/kate/SearchActivity$SearchType;

    iput-object v2, v0, Lcom/perm/kate/SearchActivity;->searchType:Lcom/perm/kate/SearchActivity$SearchType;

    goto :goto_3

    :cond_6
    if-eqz v7, :cond_7

    .line 115
    sget-object v2, Lcom/perm/kate/SearchActivity$SearchType;->Mentions:Lcom/perm/kate/SearchActivity$SearchType;

    iput-object v2, v0, Lcom/perm/kate/SearchActivity;->searchType:Lcom/perm/kate/SearchActivity$SearchType;

    goto :goto_3

    :cond_7
    if-eqz v12, :cond_8

    .line 117
    sget-object v2, Lcom/perm/kate/SearchActivity$SearchType;->Message:Lcom/perm/kate/SearchActivity$SearchType;

    iput-object v2, v0, Lcom/perm/kate/SearchActivity;->searchType:Lcom/perm/kate/SearchActivity$SearchType;

    goto :goto_3

    :cond_8
    if-eqz v13, :cond_c

    .line 119
    sget-object v2, Lcom/perm/kate/SearchActivity$SearchType;->Dialogs:Lcom/perm/kate/SearchActivity$SearchType;

    iput-object v2, v0, Lcom/perm/kate/SearchActivity;->searchType:Lcom/perm/kate/SearchActivity$SearchType;

    goto :goto_3

    .line 111
    :cond_9
    :goto_0
    sget-object v2, Lcom/perm/kate/SearchActivity$SearchType;->User:Lcom/perm/kate/SearchActivity$SearchType;

    iput-object v2, v0, Lcom/perm/kate/SearchActivity;->searchType:Lcom/perm/kate/SearchActivity$SearchType;

    goto :goto_3

    .line 107
    :cond_a
    :goto_1
    sget-object v2, Lcom/perm/kate/SearchActivity$SearchType;->Video:Lcom/perm/kate/SearchActivity$SearchType;

    iput-object v2, v0, Lcom/perm/kate/SearchActivity;->searchType:Lcom/perm/kate/SearchActivity$SearchType;

    goto :goto_3

    .line 105
    :cond_b
    :goto_2
    sget-object v2, Lcom/perm/kate/SearchActivity$SearchType;->Audio:Lcom/perm/kate/SearchActivity$SearchType;

    iput-object v2, v0, Lcom/perm/kate/SearchActivity;->searchType:Lcom/perm/kate/SearchActivity$SearchType;

    :cond_c
    :goto_3
    const v2, 0x7f09021b

    .line 120
    invoke-virtual {v0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, v0, Lcom/perm/kate/SearchActivity;->lv_search_list:Landroid/widget/ListView;

    .line 121
    iget-object v4, v0, Lcom/perm/kate/SearchActivity;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    const v2, 0x7f090325

    .line 122
    invoke-virtual {v0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, v0, Lcom/perm/kate/SearchActivity;->tb_search:Landroid/widget/EditText;

    .line 123
    new-instance v4, Lcom/perm/kate/SearchActivity$1;

    invoke-direct {v4, v0}, Lcom/perm/kate/SearchActivity$1;-><init>(Lcom/perm/kate/SearchActivity;)V

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 135
    iget-object v2, v0, Lcom/perm/kate/SearchActivity;->tb_search:Landroid/widget/EditText;

    iget-object v4, v0, Lcom/perm/kate/SearchActivity;->search_text_watcher:Landroid/text/TextWatcher;

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const v2, 0x7f090091

    .line 136
    invoke-virtual {v0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, v0, Lcom/perm/kate/SearchActivity;->btn_search:Landroid/widget/ImageButton;

    .line 137
    iget-object v4, v0, Lcom/perm/kate/SearchActivity;->search_OnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f090139

    .line 138
    invoke-virtual {v0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, v0, Lcom/perm/kate/SearchActivity;->ll_add_parameters:Landroid/widget/FrameLayout;

    const v2, 0x7f090063

    .line 139
    invoke-virtual {v0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, v0, Lcom/perm/kate/SearchActivity;->btn_add_parameters:Landroid/widget/Button;

    .line 140
    iget-object v4, v0, Lcom/perm/kate/SearchActivity;->add_param_OnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    iget-object v2, v0, Lcom/perm/kate/SearchActivity;->playerCallback:Lcom/perm/kate/Player$PlayerCallback;

    invoke-static {v2}, Lcom/perm/kate/PlaybackService;->addCallback(Lcom/perm/kate/Player$PlayerCallback;)V

    .line 142
    iput v3, v0, Lcom/perm/kate/SearchActivity;->state:I

    .line 143
    invoke-direct/range {p0 .. p0}, Lcom/perm/kate/SearchActivity;->setHeaderTitleByType()V

    if-eqz v1, :cond_e

    .line 145
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.perm.kate.search_audio_artist"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 146
    invoke-static {v1}, Lcom/perm/kate/Helper;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 147
    iget-object v2, v0, Lcom/perm/kate/SearchActivity;->tb_search:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 148
    invoke-direct/range {p0 .. p0}, Lcom/perm/kate/SearchActivity;->onSearch()V

    goto :goto_5

    .line 150
    :cond_d
    invoke-direct/range {p0 .. p0}, Lcom/perm/kate/SearchActivity;->displayHistory()V

    goto :goto_5

    :cond_e
    if-eqz v5, :cond_f

    .line 151
    iget-object v1, v0, Lcom/perm/kate/SearchActivity;->group_id:Ljava/lang/Long;

    if-eqz v1, :cond_f

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long v4, v1, v10

    if-lez v4, :cond_f

    .line 152
    invoke-direct/range {p0 .. p0}, Lcom/perm/kate/SearchActivity;->onSearch()V

    goto :goto_5

    :cond_f
    if-nez v6, :cond_11

    if-eqz v7, :cond_10

    goto :goto_4

    .line 160
    :cond_10
    invoke-direct/range {p0 .. p0}, Lcom/perm/kate/SearchActivity;->displayHistory()V

    goto :goto_5

    .line 154
    :cond_11
    :goto_4
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.perm.kate.hashtag"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 155
    invoke-static {v1}, Lcom/perm/kate/Helper;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 156
    iget-object v2, v0, Lcom/perm/kate/SearchActivity;->tb_search:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 157
    invoke-direct/range {p0 .. p0}, Lcom/perm/kate/SearchActivity;->onSearch()V

    .line 161
    :cond_12
    :goto_5
    invoke-direct/range {p0 .. p0}, Lcom/perm/kate/SearchActivity;->showAddParamsLayoutByType()V

    .line 162
    iget-object v1, v0, Lcom/perm/kate/SearchActivity;->searchType:Lcom/perm/kate/SearchActivity$SearchType;

    sget-object v2, Lcom/perm/kate/SearchActivity$SearchType;->None:Lcom/perm/kate/SearchActivity$SearchType;

    if-ne v1, v2, :cond_13

    .line 163
    invoke-virtual {v0, v3}, Lcom/perm/kate/SearchActivity;->showSearchTypeDialog(Z)V

    :cond_13
    const v1, 0x7f0900be

    .line 165
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, v0, Lcom/perm/kate/SearchActivity;->btn_clear:Landroid/widget/ImageButton;

    .line 166
    new-instance v2, Lcom/perm/kate/SearchActivity$2;

    invoke-direct {v2, v0}, Lcom/perm/kate/SearchActivity$2;-><init>(Lcom/perm/kate/SearchActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f090233

    .line 179
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/MiniPlayer;

    if-eqz v1, :cond_14

    .line 181
    invoke-virtual {v1, v3}, Lcom/perm/kate/MiniPlayer;->setActive(Z)V

    .line 182
    :cond_14
    iget-boolean v1, v0, Lcom/perm/kate/SearchActivity;->select_audio:Z

    if-eqz v1, :cond_15

    const v1, 0x7f09014c

    .line 183
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f090090

    .line 184
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, v0, Lcom/perm/kate/SearchActivity;->btn_attach:Landroid/widget/Button;

    const v2, 0x7f0f0051

    .line 185
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 186
    iget-object v1, v0, Lcom/perm/kate/SearchActivity;->btn_attach:Landroid/widget/Button;

    iget-object v2, v0, Lcom/perm/kate/SearchActivity;->selectClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_15
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 0

    .line 1487
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 1488
    invoke-virtual {p0, p1}, Lcom/perm/kate/SearchActivity;->fillMenuItems(Landroid/view/Menu;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public onDestroy()V
    .locals 3

    .line 223
    iget-object v0, p0, Lcom/perm/kate/SearchActivity;->playerCallback:Lcom/perm/kate/Player$PlayerCallback;

    invoke-static {v0}, Lcom/perm/kate/PlaybackService;->removeCallback(Lcom/perm/kate/Player$PlayerCallback;)V

    .line 224
    iget-object v0, p0, Lcom/perm/kate/SearchActivity;->lv_search_list:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/perm/kate/SearchActivity;->lv_search_list:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    instance-of v0, v0, Lcom/perm/kate/SearchedMessagesAdapter;

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/perm/kate/SearchActivity;->lv_search_list:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/SearchedMessagesAdapter;

    invoke-virtual {v0}, Lcom/perm/kate/SearchedMessagesAdapter;->Destroy()V

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/SearchActivity;->lv_search_list:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/perm/kate/SearchActivity;->lv_search_list:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    instance-of v0, v0, Lcom/perm/kate/SearchedNewsAdapter;

    if-eqz v0, :cond_1

    .line 227
    iget-object v0, p0, Lcom/perm/kate/SearchActivity;->lv_search_list:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/SearchedNewsAdapter;

    invoke-virtual {v0}, Lcom/perm/kate/SearchedNewsAdapter;->destroy()V

    .line 228
    :cond_1
    iget-object v0, p0, Lcom/perm/kate/SearchActivity;->lv_search_list:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 229
    iput-object v1, p0, Lcom/perm/kate/SearchActivity;->lv_search_list:Landroid/widget/ListView;

    .line 230
    iput-object v1, p0, Lcom/perm/kate/SearchActivity;->sd_adapter:Lcom/perm/kate/SearchedDialogsAdapter;

    .line 231
    iget-object v0, p0, Lcom/perm/kate/SearchActivity;->tb_search:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/perm/kate/SearchActivity;->search_text_watcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 232
    iput-object v1, p0, Lcom/perm/kate/SearchActivity;->handler:Landroid/os/Handler;

    .line 233
    iget-object v0, p0, Lcom/perm/kate/SearchActivity;->audioHelper:Lcom/perm/kate/AudioClickHelper;

    invoke-virtual {v0}, Lcom/perm/kate/AudioClickHelper;->destroy()V

    .line 234
    iput-object v1, p0, Lcom/perm/kate/SearchActivity;->audioHelper:Lcom/perm/kate/AudioClickHelper;

    .line 235
    iget-object v0, p0, Lcom/perm/kate/SearchActivity;->history_adapter:Lcom/perm/kate/SearchHistoryAdapter;

    if-eqz v0, :cond_2

    .line 236
    invoke-virtual {v0}, Lcom/perm/kate/SearchHistoryAdapter;->Destroy()V

    .line 237
    iput-object v1, p0, Lcom/perm/kate/SearchActivity;->history_adapter:Lcom/perm/kate/SearchHistoryAdapter;

    .line 239
    :cond_2
    invoke-super {p0}, Lcom/perm/kate/BaseActivity;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 1501
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f09016a

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 1503
    :cond_0
    invoke-direct {p0}, Lcom/perm/kate/SearchActivity;->clearHistory()V

    .line 1506
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onSearchRequested()Z
    .locals 1

    .line 244
    invoke-direct {p0}, Lcom/perm/kate/SearchActivity;->onSearch()V

    const/4 v0, 0x1

    return v0
.end method

.method protected performMessagesSearch()V
    .locals 2

    const/4 v0, 0x0

    .line 975
    iput v0, p0, Lcom/perm/kate/SearchActivity;->state:I

    .line 976
    invoke-direct {p0}, Lcom/perm/kate/SearchActivity;->hideSearch()V

    .line 977
    iget-object v0, p0, Lcom/perm/kate/SearchActivity;->messagesSearchType:Lcom/perm/kate/SearchActivity$MessagesSearchType;

    sget-object v1, Lcom/perm/kate/SearchActivity$MessagesSearchType;->UserMessagesSearch:Lcom/perm/kate/SearchActivity$MessagesSearchType;

    if-eq v0, v1, :cond_0

    .line 978
    sget-object v0, Lcom/perm/kate/SearchActivity$MessagesSearchType;->MessagesSearch:Lcom/perm/kate/SearchActivity$MessagesSearchType;

    iput-object v0, p0, Lcom/perm/kate/SearchActivity;->messagesSearchType:Lcom/perm/kate/SearchActivity$MessagesSearchType;

    .line 979
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/SearchActivity;->lv_search_list:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/perm/kate/SearchActivity;->listener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 980
    iget-object v0, p0, Lcom/perm/kate/SearchActivity;->lv_search_list:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/perm/kate/SearchActivity;->long_click_listener:Landroid/widget/AdapterView$OnItemLongClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 981
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, v0}, Lcom/perm/kate/SearchActivity;->displaySearchedMessages(Ljava/util/ArrayList;)V

    .line 982
    iget-object v0, p0, Lcom/perm/kate/SearchActivity;->tb_search:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 983
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 984
    new-instance v1, Lcom/perm/kate/SearchActivity$24;

    invoke-direct {v1, p0, v0}, Lcom/perm/kate/SearchActivity$24;-><init>(Lcom/perm/kate/SearchActivity;Ljava/lang/String;)V

    .line 990
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :cond_1
    return-void
.end method

.method protected showSearchTypeDialog(Z)V
    .locals 5

    .line 344
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 345
    new-instance v1, Lcom/perm/kate/MenuItemDetails;

    const v2, 0x7f0f04ea

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 346
    new-instance v1, Lcom/perm/kate/MenuItemDetails;

    const v2, 0x7f0f051d

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 347
    new-instance v1, Lcom/perm/kate/MenuItemDetails;

    const v2, 0x7f0f04c1

    const/4 v4, 0x2

    invoke-direct {v1, v2, v4}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 348
    new-instance v1, Lcom/perm/kate/MenuItemDetails;

    const v2, 0x7f0f010d

    const/4 v4, 0x3

    invoke-direct {v1, v2, v4}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 349
    new-instance v1, Lcom/perm/kate/MenuItemDetails;

    const v2, 0x7f0f0231

    const/4 v4, 0x4

    invoke-direct {v1, v2, v4}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 350
    new-instance v1, Lcom/perm/kate/MenuItemDetails;

    const v2, 0x7f0f036f

    const/4 v4, 0x5

    invoke-direct {v1, v2, v4}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 351
    new-instance v1, Lcom/perm/kate/MenuItemDetails;

    const v2, 0x7f0f00c6

    const/4 v4, 0x6

    invoke-direct {v1, v2, v4}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 352
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0f02b2

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    .line 353
    invoke-static {v0}, Lcom/perm/kate/MenuItemDetails;->toArray(Ljava/util/ArrayList;)[Ljava/lang/CharSequence;

    move-result-object v2

    new-instance v4, Lcom/perm/kate/SearchActivity$5;

    invoke-direct {v4, p0, v0, p1}, Lcom/perm/kate/SearchActivity$5;-><init>(Lcom/perm/kate/SearchActivity;Ljava/util/ArrayList;Z)V

    invoke-virtual {v1, v2, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 387
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 388
    invoke-virtual {p1, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 389
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

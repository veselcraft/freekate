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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Audio;",
            ">;"
        }
    .end annotation
.end field

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Document;",
            ">;"
        }
    .end annotation
.end field

.field private docs_callback:Lcom/perm/kate/session/Callback;

.field private docs_load_more_callback:Lcom/perm/kate/session/Callback;

.field private filters:Ljava/lang/String;

.field private group_callback:Lcom/perm/kate/session/Callback;

.field private group_id:Ljava/lang/Long;

.field private group_listener:Landroid/widget/AdapterView$OnItemClickListener;

.field groups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Group;",
            ">;"
        }
    .end annotation
.end field

.field private handler:Landroid/os/Handler;

.field private has_photo:Ljava/lang/Integer;

.field private hd:Ljava/lang/Integer;

.field private history_adapter:Lcom/perm/kate/SearchHistoryAdapter;

.field private history_listener:Landroid/widget/AdapterView$OnItemClickListener;

.field private hometown:Ljava/lang/String;

.field private interests:Ljava/lang/String;

.field private label_for_button:Ljava/lang/String;

.field private last_query:Ljava/lang/String;

.field private listener:Landroid/widget/AdapterView$OnItemClickListener;

.field private listener2:Landroid/widget/AdapterView$OnItemClickListener;

.field private ll_add_parameters:Landroid/widget/FrameLayout;

.field private load_more_searchmessages_callback:Lcom/perm/kate/session/Callback;

.field private long_click_listener:Landroid/widget/AdapterView$OnItemLongClickListener;

.field private lv_search_list:Landroid/widget/ListView;

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/SearchDialogItem;",
            ">;"
        }
    .end annotation
.end field

.field private searchType:Lcom/perm/kate/SearchActivity$SearchType;

.field private search_OnClickListener:Landroid/view/View$OnClickListener;

.field private search_text_watcher:Landroid/text/TextWatcher;

.field private searched_messages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Message;",
            ">;"
        }
    .end annotation
.end field

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

.field private university:Ljava/lang/Integer;

.field private university_country:Ljava/lang/Integer;

.field private university_year:Ljava/lang/Integer;

.field private user_callback:Lcom/perm/kate/session/Callback;

.field private user_listener:Landroid/widget/AdapterView$OnItemClickListener;

.field user_page_size:Ljava/lang/Long;

.field users:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/User;",
            ">;"
        }
    .end annotation
.end field

.field private videoMenuCallback:Lcom/perm/kate/VideoMenuCallback;

.field private video_callback:Lcom/perm/kate/session/Callback;

.field private video_listener:Landroid/widget/AdapterView$OnItemClickListener;

.field video_page_size:Ljava/lang/Long;

.field private video_sort:Ljava/lang/Integer;

.field videos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Video;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x14

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 50
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;-><init>()V

    .line 57
    sget-object v0, Lcom/perm/kate/SearchActivity$SearchType;->None:Lcom/perm/kate/SearchActivity$SearchType;

    iput-object v0, p0, Lcom/perm/kate/SearchActivity;->searchType:Lcom/perm/kate/SearchActivity$SearchType;

    .line 59
    const/4 v0, -0x1

    iput v0, p0, Lcom/perm/kate/SearchActivity;->state:I

    .line 66
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/SearchActivity;->video_page_size:Ljava/lang/Long;

    .line 67
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/SearchActivity;->user_page_size:Ljava/lang/Long;

    .line 69
    iput-boolean v3, p0, Lcom/perm/kate/SearchActivity;->select_audio:Z

    .line 70
    iput-boolean v3, p0, Lcom/perm/kate/SearchActivity;->select_video:Z

    .line 71
    iput-boolean v3, p0, Lcom/perm/kate/SearchActivity;->select_user:Z

    .line 238
    new-instance v0, Lcom/perm/kate/SearchActivity$3;

    invoke-direct {v0, p0}, Lcom/perm/kate/SearchActivity$3;-><init>(Lcom/perm/kate/SearchActivity;)V

    iput-object v0, p0, Lcom/perm/kate/SearchActivity;->search_OnClickListener:Landroid/view/View$OnClickListener;

    .line 378
    new-instance v0, Lcom/perm/kate/SearchActivity$6;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/SearchActivity$6;-><init>(Lcom/perm/kate/SearchActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/SearchActivity;->audio_callback:Lcom/perm/kate/session/Callback;

    .line 404
    new-instance v0, Lcom/perm/kate/AudioClickHelper;

    invoke-direct {v0, p0, v2}, Lcom/perm/kate/AudioClickHelper;-><init>(Lcom/perm/kate/BaseActivity;Lcom/perm/kate/AudioClickHelper$AudioClickHelperCallback;)V

    iput-object v0, p0, Lcom/perm/kate/SearchActivity;->audioHelper:Lcom/perm/kate/AudioClickHelper;

    .line 406
    new-instance v0, Lcom/perm/kate/SearchActivity$7;

    invoke-direct {v0, p0}, Lcom/perm/kate/SearchActivity$7;-><init>(Lcom/perm/kate/SearchActivity;)V

    iput-object v0, p0, Lcom/perm/kate/SearchActivity;->audio_listener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 423
    new-instance v0, Lcom/perm/kate/SearchActivity$8;

    invoke-direct {v0, p0}, Lcom/perm/kate/SearchActivity$8;-><init>(Lcom/perm/kate/SearchActivity;)V

    iput-object v0, p0, Lcom/perm/kate/SearchActivity;->playerCallback:Lcom/perm/kate/Player$PlayerCallback;

    .line 454
    new-instance v0, Lcom/perm/kate/SearchActivity$9;

    invoke-direct {v0, p0}, Lcom/perm/kate/SearchActivity$9;-><init>(Lcom/perm/kate/SearchActivity;)V

    iput-object v0, p0, Lcom/perm/kate/SearchActivity;->selectClickListener:Landroid/view/View$OnClickListener;

    .line 482
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/SearchActivity;->videos:Ljava/util/ArrayList;

    .line 483
    new-instance v0, Lcom/perm/kate/SearchActivity$10;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/SearchActivity$10;-><init>(Lcom/perm/kate/SearchActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/SearchActivity;->video_callback:Lcom/perm/kate/session/Callback;

    .line 509
    new-instance v0, Lcom/perm/kate/SearchActivity$11;

    invoke-direct {v0, p0}, Lcom/perm/kate/SearchActivity$11;-><init>(Lcom/perm/kate/SearchActivity;)V

    iput-object v0, p0, Lcom/perm/kate/SearchActivity;->video_listener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 536
    new-instance v0, Lcom/perm/kate/SearchActivity$12;

    invoke-direct {v0, p0}, Lcom/perm/kate/SearchActivity$12;-><init>(Lcom/perm/kate/SearchActivity;)V

    iput-object v0, p0, Lcom/perm/kate/SearchActivity;->videoMenuCallback:Lcom/perm/kate/VideoMenuCallback;

    .line 551
    new-instance v0, Lcom/perm/kate/SearchActivity$13;

    invoke-direct {v0, p0}, Lcom/perm/kate/SearchActivity$13;-><init>(Lcom/perm/kate/SearchActivity;)V

    iput-object v0, p0, Lcom/perm/kate/SearchActivity;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 579
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/perm/kate/SearchActivity;->offset:J

    .line 636
    new-instance v0, Lcom/perm/kate/SearchActivity$16;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/SearchActivity$16;-><init>(Lcom/perm/kate/SearchActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/SearchActivity;->callback_load_more:Lcom/perm/kate/session/Callback;

    .line 666
    iput-object v2, p0, Lcom/perm/kate/SearchActivity;->sort:Ljava/lang/Integer;

    .line 667
    iput-object v2, p0, Lcom/perm/kate/SearchActivity;->city:Ljava/lang/Integer;

    .line 668
    iput-object v2, p0, Lcom/perm/kate/SearchActivity;->country:Ljava/lang/Integer;

    .line 669
    iput-object v2, p0, Lcom/perm/kate/SearchActivity;->hometown:Ljava/lang/String;

    .line 670
    iput-object v2, p0, Lcom/perm/kate/SearchActivity;->university_country:Ljava/lang/Integer;

    .line 671
    iput-object v2, p0, Lcom/perm/kate/SearchActivity;->university:Ljava/lang/Integer;

    .line 672
    iput-object v2, p0, Lcom/perm/kate/SearchActivity;->university_year:Ljava/lang/Integer;

    .line 673
    iput-object v2, p0, Lcom/perm/kate/SearchActivity;->sex:Ljava/lang/Integer;

    .line 674
    iput-object v2, p0, Lcom/perm/kate/SearchActivity;->status:Ljava/lang/Integer;

    .line 675
    iput-object v2, p0, Lcom/perm/kate/SearchActivity;->age_from:Ljava/lang/Integer;

    .line 676
    iput-object v2, p0, Lcom/perm/kate/SearchActivity;->age_to:Ljava/lang/Integer;

    .line 677
    iput-object v2, p0, Lcom/perm/kate/SearchActivity;->birth_day:Ljava/lang/Integer;

    .line 678
    iput-object v2, p0, Lcom/perm/kate/SearchActivity;->birth_month:Ljava/lang/Integer;

    .line 679
    iput-object v2, p0, Lcom/perm/kate/SearchActivity;->birth_year:Ljava/lang/Integer;

    .line 680
    iput-object v2, p0, Lcom/perm/kate/SearchActivity;->online:Ljava/lang/Integer;

    .line 681
    iput-object v2, p0, Lcom/perm/kate/SearchActivity;->has_photo:Ljava/lang/Integer;

    .line 682
    iput-object v2, p0, Lcom/perm/kate/SearchActivity;->school_country:Ljava/lang/Integer;

    .line 683
    iput-object v2, p0, Lcom/perm/kate/SearchActivity;->school_city:Ljava/lang/Integer;

    .line 684
    iput-object v2, p0, Lcom/perm/kate/SearchActivity;->school:Ljava/lang/Integer;

    .line 685
    iput-object v2, p0, Lcom/perm/kate/SearchActivity;->school_year:Ljava/lang/Integer;

    .line 686
    iput-object v2, p0, Lcom/perm/kate/SearchActivity;->religion:Ljava/lang/String;

    .line 687
    iput-object v2, p0, Lcom/perm/kate/SearchActivity;->interests:Ljava/lang/String;

    .line 688
    iput-object v2, p0, Lcom/perm/kate/SearchActivity;->company:Ljava/lang/String;

    .line 689
    iput-object v2, p0, Lcom/perm/kate/SearchActivity;->position:Ljava/lang/String;

    .line 690
    iput-object v2, p0, Lcom/perm/kate/SearchActivity;->group_id:Ljava/lang/Long;

    .line 707
    new-instance v0, Lcom/perm/kate/SearchActivity$17;

    invoke-direct {v0, p0}, Lcom/perm/kate/SearchActivity$17;-><init>(Lcom/perm/kate/SearchActivity;)V

    iput-object v0, p0, Lcom/perm/kate/SearchActivity;->add_param_OnClickListener:Landroid/view/View$OnClickListener;

    .line 806
    new-instance v0, Lcom/perm/kate/SearchActivity$18;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/SearchActivity$18;-><init>(Lcom/perm/kate/SearchActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/SearchActivity;->user_callback:Lcom/perm/kate/session/Callback;

    .line 828
    new-instance v0, Lcom/perm/kate/SearchActivity$19;

    invoke-direct {v0, p0}, Lcom/perm/kate/SearchActivity$19;-><init>(Lcom/perm/kate/SearchActivity;)V

    iput-object v0, p0, Lcom/perm/kate/SearchActivity;->user_listener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 851
    new-instance v0, Lcom/perm/kate/SearchActivity$20;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/SearchActivity$20;-><init>(Lcom/perm/kate/SearchActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/SearchActivity;->callback_load_more_users:Lcom/perm/kate/session/Callback;

    .line 876
    new-instance v0, Lcom/perm/kate/SearchActivity$21;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/SearchActivity$21;-><init>(Lcom/perm/kate/SearchActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/SearchActivity;->group_callback:Lcom/perm/kate/session/Callback;

    .line 897
    new-instance v0, Lcom/perm/kate/SearchActivity$22;

    invoke-direct {v0, p0}, Lcom/perm/kate/SearchActivity$22;-><init>(Lcom/perm/kate/SearchActivity;)V

    iput-object v0, p0, Lcom/perm/kate/SearchActivity;->group_listener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 910
    new-instance v0, Lcom/perm/kate/SearchActivity$23;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/SearchActivity$23;-><init>(Lcom/perm/kate/SearchActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/SearchActivity;->callback_load_more_groups:Lcom/perm/kate/session/Callback;

    .line 936
    const/16 v0, 0x14

    iput v0, p0, Lcom/perm/kate/SearchActivity;->message_page_size:I

    .line 938
    sget-object v0, Lcom/perm/kate/SearchActivity$MessagesSearchType;->None:Lcom/perm/kate/SearchActivity$MessagesSearchType;

    iput-object v0, p0, Lcom/perm/kate/SearchActivity;->messagesSearchType:Lcom/perm/kate/SearchActivity$MessagesSearchType;

    .line 940
    iput-object v2, p0, Lcom/perm/kate/SearchActivity;->peer_id:Ljava/lang/Long;

    .line 962
    new-instance v0, Lcom/perm/kate/SearchActivity$25;

    invoke-direct {v0, p0}, Lcom/perm/kate/SearchActivity$25;-><init>(Lcom/perm/kate/SearchActivity;)V

    iput-object v0, p0, Lcom/perm/kate/SearchActivity;->listener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 970
    new-instance v0, Lcom/perm/kate/SearchActivity$26;

    invoke-direct {v0, p0}, Lcom/perm/kate/SearchActivity$26;-><init>(Lcom/perm/kate/SearchActivity;)V

    iput-object v0, p0, Lcom/perm/kate/SearchActivity;->long_click_listener:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 980
    new-instance v0, Lcom/perm/kate/SearchActivity$27;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/SearchActivity$27;-><init>(Lcom/perm/kate/SearchActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/SearchActivity;->messages_search_callback:Lcom/perm/kate/session/Callback;

    .line 1030
    new-instance v0, Lcom/perm/kate/SearchActivity$28;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/SearchActivity$28;-><init>(Lcom/perm/kate/SearchActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/SearchActivity;->load_more_searchmessages_callback:Lcom/perm/kate/session/Callback;

    .line 1076
    new-instance v0, Lcom/perm/kate/SearchActivity$30;

    invoke-direct {v0, p0}, Lcom/perm/kate/SearchActivity$30;-><init>(Lcom/perm/kate/SearchActivity;)V

    iput-object v0, p0, Lcom/perm/kate/SearchActivity;->search_text_watcher:Landroid/text/TextWatcher;

    .line 1146
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/SearchActivity;->searchDialogsItems:Ljava/util/ArrayList;

    .line 1148
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/SearchActivity;->handler:Landroid/os/Handler;

    .line 1156
    new-instance v0, Lcom/perm/kate/SearchActivity$31;

    invoke-direct {v0, p0}, Lcom/perm/kate/SearchActivity$31;-><init>(Lcom/perm/kate/SearchActivity;)V

    iput-object v0, p0, Lcom/perm/kate/SearchActivity;->startDialogsSearchRunnable:Ljava/lang/Runnable;

    .line 1258
    new-instance v0, Lcom/perm/kate/SearchActivity$34;

    invoke-direct {v0, p0}, Lcom/perm/kate/SearchActivity$34;-><init>(Lcom/perm/kate/SearchActivity;)V

    iput-object v0, p0, Lcom/perm/kate/SearchActivity;->listener2:Landroid/widget/AdapterView$OnItemClickListener;

    .line 1299
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/SearchActivity;->news_page_size:Ljava/lang/Long;

    .line 1300
    iput-object v2, p0, Lcom/perm/kate/SearchActivity;->news_from:Ljava/lang/String;

    .line 1302
    new-instance v0, Lcom/perm/kate/SearchActivity$35;

    invoke-direct {v0, p0}, Lcom/perm/kate/SearchActivity$35;-><init>(Lcom/perm/kate/SearchActivity;)V

    iput-object v0, p0, Lcom/perm/kate/SearchActivity;->news_listener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 1312
    new-instance v0, Lcom/perm/kate/SearchActivity$36;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/SearchActivity$36;-><init>(Lcom/perm/kate/SearchActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/SearchActivity;->news_callback:Lcom/perm/kate/session/Callback;

    .line 1338
    new-instance v0, Lcom/perm/kate/SearchActivity$37;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/SearchActivity$37;-><init>(Lcom/perm/kate/SearchActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/SearchActivity;->news_load_more_callback:Lcom/perm/kate/session/Callback;

    .line 1403
    new-instance v0, Lcom/perm/kate/SearchActivity$39;

    invoke-direct {v0, p0}, Lcom/perm/kate/SearchActivity$39;-><init>(Lcom/perm/kate/SearchActivity;)V

    iput-object v0, p0, Lcom/perm/kate/SearchActivity;->history_listener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 1416
    iput-boolean v3, p0, Lcom/perm/kate/SearchActivity;->shownHistory:Z

    .line 1448
    new-instance v0, Lcom/perm/kate/SearchActivity$40;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/SearchActivity$40;-><init>(Lcom/perm/kate/SearchActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/SearchActivity;->docs_callback:Lcom/perm/kate/session/Callback;

    .line 1469
    new-instance v0, Lcom/perm/kate/SearchActivity$41;

    invoke-direct {v0, p0}, Lcom/perm/kate/SearchActivity$41;-><init>(Lcom/perm/kate/SearchActivity;)V

    iput-object v0, p0, Lcom/perm/kate/SearchActivity;->doc_listener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 1477
    new-instance v0, Lcom/perm/kate/SearchActivity$42;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/SearchActivity$42;-><init>(Lcom/perm/kate/SearchActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/SearchActivity;->docs_load_more_callback:Lcom/perm/kate/session/Callback;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/SearchActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/SearchActivity;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/perm/kate/SearchActivity;->onSearch()V

    return-void
.end method

.method static synthetic access$100(Lcom/perm/kate/SearchActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/SearchActivity;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/perm/kate/SearchActivity;->tb_search:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/perm/kate/SearchActivity;)Lcom/perm/kate/session/Callback;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/SearchActivity;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/perm/kate/SearchActivity;->video_callback:Lcom/perm/kate/session/Callback;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/perm/kate/SearchActivity;)Ljava/lang/Integer;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/SearchActivity;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/perm/kate/SearchActivity;->sort:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/perm/kate/SearchActivity;)Ljava/lang/Integer;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/SearchActivity;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/perm/kate/SearchActivity;->city:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/perm/kate/SearchActivity;)Ljava/lang/Integer;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/SearchActivity;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/perm/kate/SearchActivity;->country:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/perm/kate/SearchActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/SearchActivity;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/perm/kate/SearchActivity;->hometown:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/perm/kate/SearchActivity;)Ljava/lang/Integer;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/SearchActivity;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/perm/kate/SearchActivity;->university_country:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/perm/kate/SearchActivity;)Ljava/lang/Integer;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/SearchActivity;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/perm/kate/SearchActivity;->university:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/perm/kate/SearchActivity;)Ljava/lang/Integer;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/SearchActivity;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/perm/kate/SearchActivity;->university_year:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/perm/kate/SearchActivity;)Ljava/lang/Integer;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/SearchActivity;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/perm/kate/SearchActivity;->sex:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/perm/kate/SearchActivity;)Ljava/lang/Integer;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/SearchActivity;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/perm/kate/SearchActivity;->status:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$200(Lcom/perm/kate/SearchActivity;)Lcom/perm/kate/SearchActivity$SearchType;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/SearchActivity;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/perm/kate/SearchActivity;->searchType:Lcom/perm/kate/SearchActivity$SearchType;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/perm/kate/SearchActivity;)Ljava/lang/Integer;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/SearchActivity;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/perm/kate/SearchActivity;->age_from:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$202(Lcom/perm/kate/SearchActivity;Lcom/perm/kate/SearchActivity$SearchType;)Lcom/perm/kate/SearchActivity$SearchType;
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/SearchActivity;
    .param p1, "x1"    # Lcom/perm/kate/SearchActivity$SearchType;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/perm/kate/SearchActivity;->searchType:Lcom/perm/kate/SearchActivity$SearchType;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/perm/kate/SearchActivity;)Ljava/lang/Integer;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/SearchActivity;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/perm/kate/SearchActivity;->age_to:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/perm/kate/SearchActivity;)Ljava/lang/Integer;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/SearchActivity;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/perm/kate/SearchActivity;->birth_day:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/perm/kate/SearchActivity;)Ljava/lang/Integer;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/SearchActivity;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/perm/kate/SearchActivity;->birth_month:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/perm/kate/SearchActivity;)Ljava/lang/Integer;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/SearchActivity;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/perm/kate/SearchActivity;->birth_year:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/perm/kate/SearchActivity;)Ljava/lang/Integer;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/SearchActivity;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/perm/kate/SearchActivity;->online:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/perm/kate/SearchActivity;)Ljava/lang/Integer;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/SearchActivity;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/perm/kate/SearchActivity;->has_photo:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/perm/kate/SearchActivity;)Ljava/lang/Integer;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/SearchActivity;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/perm/kate/SearchActivity;->school_country:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/perm/kate/SearchActivity;)Ljava/lang/Integer;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/SearchActivity;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/perm/kate/SearchActivity;->school_city:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/perm/kate/SearchActivity;)Ljava/lang/Integer;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/SearchActivity;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/perm/kate/SearchActivity;->school:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$300(Lcom/perm/kate/SearchActivity;)Lcom/perm/kate/SearchActivity$MessagesSearchType;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/SearchActivity;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/perm/kate/SearchActivity;->messagesSearchType:Lcom/perm/kate/SearchActivity$MessagesSearchType;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/perm/kate/SearchActivity;)Ljava/lang/Integer;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/SearchActivity;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/perm/kate/SearchActivity;->school_year:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/perm/kate/SearchActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/SearchActivity;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/perm/kate/SearchActivity;->religion:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/perm/kate/SearchActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/SearchActivity;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/perm/kate/SearchActivity;->interests:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/perm/kate/SearchActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/SearchActivity;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/perm/kate/SearchActivity;->company:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/perm/kate/SearchActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/SearchActivity;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/perm/kate/SearchActivity;->position:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/perm/kate/SearchActivity;)Ljava/lang/Long;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/SearchActivity;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/perm/kate/SearchActivity;->group_id:Ljava/lang/Long;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/perm/kate/SearchActivity;)Lcom/perm/kate/session/Callback;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/SearchActivity;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/perm/kate/SearchActivity;->user_callback:Lcom/perm/kate/session/Callback;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/perm/kate/SearchActivity;)Lcom/perm/kate/session/Callback;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/SearchActivity;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/perm/kate/SearchActivity;->group_callback:Lcom/perm/kate/session/Callback;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/perm/kate/SearchActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/SearchActivity;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/perm/kate/SearchActivity;->news_from:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3802(Lcom/perm/kate/SearchActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/SearchActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/perm/kate/SearchActivity;->news_from:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3900(Lcom/perm/kate/SearchActivity;)Ljava/lang/Long;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/SearchActivity;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/perm/kate/SearchActivity;->news_page_size:Ljava/lang/Long;

    return-object v0
.end method

.method static synthetic access$400(Lcom/perm/kate/SearchActivity;)Ljava/lang/Integer;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/SearchActivity;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/perm/kate/SearchActivity;->performer_only:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/perm/kate/SearchActivity;)Lcom/perm/kate/session/Callback;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/SearchActivity;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/perm/kate/SearchActivity;->news_callback:Lcom/perm/kate/session/Callback;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/perm/kate/SearchActivity;)Lcom/perm/kate/session/Callback;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/SearchActivity;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/perm/kate/SearchActivity;->docs_callback:Lcom/perm/kate/session/Callback;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/perm/kate/SearchActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/SearchActivity;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/perm/kate/SearchActivity;->setHeaderTitleByType()V

    return-void
.end method

.method static synthetic access$4300(Lcom/perm/kate/SearchActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/SearchActivity;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/perm/kate/SearchActivity;->showAddParamsLayoutByType()V

    return-void
.end method

.method static synthetic access$4400(Lcom/perm/kate/SearchActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/SearchActivity;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/perm/kate/SearchActivity;->audios:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$4402(Lcom/perm/kate/SearchActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/SearchActivity;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/perm/kate/SearchActivity;->audios:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$4500(Lcom/perm/kate/SearchActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/SearchActivity;

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/perm/kate/SearchActivity;->select_audio:Z

    return v0
.end method

.method static synthetic access$4600(Lcom/perm/kate/SearchActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/SearchActivity;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/perm/kate/SearchActivity;->btn_attach:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$4700(Lcom/perm/kate/SearchActivity;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/SearchActivity;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/perm/kate/SearchActivity;->lv_search_list:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/perm/kate/SearchActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/SearchActivity;

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/perm/kate/SearchActivity;->select_video:Z

    return v0
.end method

.method static synthetic access$4900(Lcom/perm/kate/SearchActivity;)Lcom/perm/kate/VideoMenuCallback;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/SearchActivity;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/perm/kate/SearchActivity;->videoMenuCallback:Lcom/perm/kate/VideoMenuCallback;

    return-object v0
.end method

.method static synthetic access$500(Lcom/perm/kate/SearchActivity;)Lcom/perm/kate/session/Callback;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/SearchActivity;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/perm/kate/SearchActivity;->audio_callback:Lcom/perm/kate/session/Callback;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/perm/kate/SearchActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/SearchActivity;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/perm/kate/SearchActivity;->requeryOnUiThread()V

    return-void
.end method

.method static synthetic access$5100(Lcom/perm/kate/SearchActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/SearchActivity;

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/perm/kate/SearchActivity;->shownHistory:Z

    return v0
.end method

.method static synthetic access$5200(Lcom/perm/kate/SearchActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/SearchActivity;

    .prologue
    .line 50
    iget v0, p0, Lcom/perm/kate/SearchActivity;->state:I

    return v0
.end method

.method static synthetic access$5202(Lcom/perm/kate/SearchActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/SearchActivity;
    .param p1, "x1"    # I

    .prologue
    .line 50
    iput p1, p0, Lcom/perm/kate/SearchActivity;->state:I

    return p1
.end method

.method static synthetic access$5300(Lcom/perm/kate/SearchActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/SearchActivity;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/perm/kate/SearchActivity;->loadMore()V

    return-void
.end method

.method static synthetic access$5400(Lcom/perm/kate/SearchActivity;)Lcom/perm/kate/session/Callback;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/SearchActivity;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/perm/kate/SearchActivity;->callback_load_more:Lcom/perm/kate/session/Callback;

    return-object v0
.end method

.method static synthetic access$5500(Lcom/perm/kate/SearchActivity;)Lcom/perm/kate/session/Callback;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/SearchActivity;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/perm/kate/SearchActivity;->callback_load_more_groups:Lcom/perm/kate/session/Callback;

    return-object v0
.end method

.method static synthetic access$5600(Lcom/perm/kate/SearchActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/SearchActivity;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/perm/kate/SearchActivity;->searched_messages:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$5602(Lcom/perm/kate/SearchActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/SearchActivity;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/perm/kate/SearchActivity;->searched_messages:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$5700(Lcom/perm/kate/SearchActivity;)Ljava/lang/Long;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/SearchActivity;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/perm/kate/SearchActivity;->peer_id:Ljava/lang/Long;

    return-object v0
.end method

.method static synthetic access$5800(Lcom/perm/kate/SearchActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/SearchActivity;

    .prologue
    .line 50
    iget v0, p0, Lcom/perm/kate/SearchActivity;->message_page_size:I

    return v0
.end method

.method static synthetic access$5900(Lcom/perm/kate/SearchActivity;)Lcom/perm/kate/session/Callback;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/SearchActivity;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/perm/kate/SearchActivity;->load_more_searchmessages_callback:Lcom/perm/kate/session/Callback;

    return-object v0
.end method

.method static synthetic access$600(Lcom/perm/kate/SearchActivity;)Ljava/lang/Integer;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/SearchActivity;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/perm/kate/SearchActivity;->video_sort:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$6000(Lcom/perm/kate/SearchActivity;)Lcom/perm/kate/session/Callback;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/SearchActivity;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/perm/kate/SearchActivity;->news_load_more_callback:Lcom/perm/kate/session/Callback;

    return-object v0
.end method

.method static synthetic access$6100(Lcom/perm/kate/SearchActivity;)Lcom/perm/kate/session/Callback;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/SearchActivity;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/perm/kate/SearchActivity;->docs_load_more_callback:Lcom/perm/kate/session/Callback;

    return-object v0
.end method

.method static synthetic access$6200(Lcom/perm/kate/SearchActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/SearchActivity;

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/perm/kate/SearchActivity;->select_user:Z

    return v0
.end method

.method static synthetic access$6300(Lcom/perm/kate/SearchActivity;)Lcom/perm/kate/session/Callback;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/SearchActivity;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/perm/kate/SearchActivity;->messages_search_callback:Lcom/perm/kate/session/Callback;

    return-object v0
.end method

.method static synthetic access$6400(Lcom/perm/kate/SearchActivity;Lcom/perm/kate/api/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/SearchActivity;
    .param p1, "x1"    # Lcom/perm/kate/api/Message;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/perm/kate/SearchActivity;->showMessage(Lcom/perm/kate/api/Message;)V

    return-void
.end method

.method static synthetic access$6500(Lcom/perm/kate/SearchActivity;JJ)V
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/SearchActivity;
    .param p1, "x1"    # J
    .param p3, "x2"    # J

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/perm/kate/SearchActivity;->showMessageThread(JJ)V

    return-void
.end method

.method static synthetic access$6600(Lcom/perm/kate/SearchActivity;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/SearchActivity;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/perm/kate/SearchActivity;->displaySearchedMessagesInUI(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$6700(Lcom/perm/kate/SearchActivity;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/SearchActivity;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/perm/kate/SearchActivity;->displaySearchedMessages(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$6800(Lcom/perm/kate/SearchActivity;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/SearchActivity;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/perm/kate/SearchActivity;->btn_clear:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$6900(Lcom/perm/kate/SearchActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/SearchActivity;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/perm/kate/SearchActivity;->localDialogsSearch()V

    return-void
.end method

.method static synthetic access$700(Lcom/perm/kate/SearchActivity;)Ljava/lang/Integer;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/SearchActivity;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/perm/kate/SearchActivity;->hd:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$7000(Lcom/perm/kate/SearchActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/SearchActivity;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/perm/kate/SearchActivity;->startHandlerDialogsSearch()V

    return-void
.end method

.method static synthetic access$7100(Lcom/perm/kate/SearchActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/SearchActivity;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/perm/kate/SearchActivity;->last_query:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7102(Lcom/perm/kate/SearchActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/SearchActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/perm/kate/SearchActivity;->last_query:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$7200(Lcom/perm/kate/SearchActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/SearchActivity;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/perm/kate/SearchActivity;->performDialogsSearch()V

    return-void
.end method

.method static synthetic access$7300(Lcom/perm/kate/SearchActivity;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/SearchActivity;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/perm/kate/SearchActivity;->modifySearchDialogsItems(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$7400(Lcom/perm/kate/SearchActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/SearchActivity;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/perm/kate/SearchActivity;->displaySearchedDialogs()V

    return-void
.end method

.method static synthetic access$7500(Lcom/perm/kate/SearchActivity;Lcom/perm/kate/api/Newsfeed;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/SearchActivity;
    .param p1, "x1"    # Lcom/perm/kate/api/Newsfeed;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/perm/kate/SearchActivity;->newsRequeryOnUiThread(Lcom/perm/kate/api/Newsfeed;)V

    return-void
.end method

.method static synthetic access$800(Lcom/perm/kate/SearchActivity;)Ljava/lang/Integer;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/SearchActivity;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/perm/kate/SearchActivity;->adult:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$900(Lcom/perm/kate/SearchActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/SearchActivity;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/perm/kate/SearchActivity;->filters:Ljava/lang/String;

    return-object v0
.end method

.method private clearHistory()V
    .locals 1

    .prologue
    .line 1398
    invoke-static {p0}, Lcom/perm/kate/history/SearchHistoryHelper;->clearHistory(Landroid/content/Context;)V

    .line 1399
    iget-boolean v0, p0, Lcom/perm/kate/SearchActivity;->shownHistory:Z

    if-eqz v0, :cond_0

    .line 1400
    invoke-direct {p0}, Lcom/perm/kate/SearchActivity;->hideSearch()V

    .line 1401
    :cond_0
    return-void
.end method

.method private displayHistory()V
    .locals 3

    .prologue
    .line 1418
    invoke-static {p0}, Lcom/perm/kate/history/SearchHistoryHelper;->getItems(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1419
    .local v0, "_items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 1427
    :cond_0
    :goto_0
    return-void

    .line 1421
    :cond_1
    new-instance v1, Lcom/perm/kate/SearchHistoryAdapter;

    invoke-direct {v1, p0, v0}, Lcom/perm/kate/SearchHistoryAdapter;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;)V

    iput-object v1, p0, Lcom/perm/kate/SearchActivity;->history_adapter:Lcom/perm/kate/SearchHistoryAdapter;

    .line 1422
    iget-object v1, p0, Lcom/perm/kate/SearchActivity;->lv_search_list:Landroid/widget/ListView;

    if-eqz v1, :cond_0

    .line 1423
    iget-object v1, p0, Lcom/perm/kate/SearchActivity;->lv_search_list:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/perm/kate/SearchActivity;->history_adapter:Lcom/perm/kate/SearchHistoryAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1424
    iget-object v1, p0, Lcom/perm/kate/SearchActivity;->lv_search_list:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/perm/kate/SearchActivity;->history_listener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1425
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/perm/kate/SearchActivity;->shownHistory:Z

    goto :goto_0
.end method

.method private displaySearchedDialogs()V
    .locals 2

    .prologue
    .line 1249
    iget-object v0, p0, Lcom/perm/kate/SearchActivity;->lv_search_list:Landroid/widget/ListView;

    if-nez v0, :cond_1

    .line 1256
    :cond_0
    :goto_0
    return-void

    .line 1251
    :cond_1
    iget-object v0, p0, Lcom/perm/kate/SearchActivity;->messagesSearchType:Lcom/perm/kate/SearchActivity$MessagesSearchType;

    sget-object v1, Lcom/perm/kate/SearchActivity$MessagesSearchType;->DialogsSearch:Lcom/perm/kate/SearchActivity$MessagesSearchType;

    if-ne v0, v1, :cond_0

    .line 1253
    new-instance v0, Lcom/perm/kate/SearchedDialogsAdapter;

    iget-object v1, p0, Lcom/perm/kate/SearchActivity;->searchDialogsItems:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/SearchedDialogsAdapter;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/perm/kate/SearchActivity;->sd_adapter:Lcom/perm/kate/SearchedDialogsAdapter;

    .line 1254
    iget-object v0, p0, Lcom/perm/kate/SearchActivity;->lv_search_list:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/perm/kate/SearchActivity;->sd_adapter:Lcom/perm/kate/SearchedDialogsAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1255
    iget-object v0, p0, Lcom/perm/kate/SearchActivity;->lv_search_list:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/perm/kate/SearchActivity;->listener2:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_0
.end method

.method private displaySearchedDialogsInUI()V
    .locals 1

    .prologue
    .line 1240
    new-instance v0, Lcom/perm/kate/SearchActivity$33;

    invoke-direct {v0, p0}, Lcom/perm/kate/SearchActivity$33;-><init>(Lcom/perm/kate/SearchActivity;)V

    invoke-virtual {p0, v0}, Lcom/perm/kate/SearchActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1246
    return-void
.end method

.method private displaySearchedMessages(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Message;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1070
    .local p1, "searched_messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Message;>;"
    sget-object v2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    sget-object v3, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v3}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/perm/kate/db/DataHelper;->fetchUser(J)Lcom/perm/kate/api/User;

    move-result-object v0

    .line 1071
    .local v0, "me":Lcom/perm/kate/api/User;
    new-instance v1, Lcom/perm/kate/SearchedMessagesAdapter;

    invoke-direct {v1, p0, p1, v0}, Lcom/perm/kate/SearchedMessagesAdapter;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;Lcom/perm/kate/api/User;)V

    .line 1072
    .local v1, "sm_adapter":Lcom/perm/kate/SearchedMessagesAdapter;
    iget-object v2, p0, Lcom/perm/kate/SearchActivity;->lv_search_list:Landroid/widget/ListView;

    if-eqz v2, :cond_0

    .line 1073
    iget-object v2, p0, Lcom/perm/kate/SearchActivity;->lv_search_list:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1074
    :cond_0
    return-void
.end method

.method private displaySearchedMessagesInUI(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Message;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1061
    .local p1, "searched_messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Message;>;"
    new-instance v0, Lcom/perm/kate/SearchActivity$29;

    invoke-direct {v0, p0, p1}, Lcom/perm/kate/SearchActivity$29;-><init>(Lcom/perm/kate/SearchActivity;Ljava/util/ArrayList;)V

    invoke-virtual {p0, v0}, Lcom/perm/kate/SearchActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1067
    return-void
.end method

.method private doSearch(Ljava/lang/String;)V
    .locals 2
    .param p1, "q"    # Ljava/lang/String;

    .prologue
    .line 261
    const/4 v0, 0x0

    iput v0, p0, Lcom/perm/kate/SearchActivity;->state:I

    .line 262
    sget-object v0, Lcom/perm/kate/SearchActivity$43;->$SwitchMap$com$perm$kate$SearchActivity$SearchType:[I

    iget-object v1, p0, Lcom/perm/kate/SearchActivity;->searchType:Lcom/perm/kate/SearchActivity$SearchType;

    invoke-virtual {v1}, Lcom/perm/kate/SearchActivity$SearchType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 288
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/perm/kate/SearchActivity;->showSearchTypeDialog(Z)V

    .line 289
    iget-object v0, p0, Lcom/perm/kate/SearchActivity;->lv_search_list:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 292
    :goto_0
    new-instance v0, Lcom/perm/kate/SearchActivity$4;

    invoke-direct {v0, p0, p1}, Lcom/perm/kate/SearchActivity$4;-><init>(Lcom/perm/kate/SearchActivity;Ljava/lang/String;)V

    .line 322
    invoke-virtual {v0}, Lcom/perm/kate/SearchActivity$4;->start()V

    .line 323
    return-void

    .line 264
    :pswitch_0
    invoke-direct {p0}, Lcom/perm/kate/SearchActivity;->hideSearch()V

    .line 265
    iget-object v0, p0, Lcom/perm/kate/SearchActivity;->lv_search_list:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/perm/kate/SearchActivity;->audio_listener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_0

    .line 268
    :pswitch_1
    invoke-direct {p0}, Lcom/perm/kate/SearchActivity;->hideSearch()V

    .line 269
    iget-object v0, p0, Lcom/perm/kate/SearchActivity;->lv_search_list:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/perm/kate/SearchActivity;->video_listener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_0

    .line 272
    :pswitch_2
    invoke-direct {p0}, Lcom/perm/kate/SearchActivity;->hideSearch()V

    .line 273
    iget-object v0, p0, Lcom/perm/kate/SearchActivity;->lv_search_list:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/perm/kate/SearchActivity;->user_listener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_0

    .line 276
    :pswitch_3
    invoke-direct {p0}, Lcom/perm/kate/SearchActivity;->hideSearch()V

    .line 277
    iget-object v0, p0, Lcom/perm/kate/SearchActivity;->lv_search_list:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/perm/kate/SearchActivity;->group_listener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_0

    .line 280
    :pswitch_4
    invoke-direct {p0}, Lcom/perm/kate/SearchActivity;->hideSearch()V

    .line 281
    iget-object v0, p0, Lcom/perm/kate/SearchActivity;->lv_search_list:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/perm/kate/SearchActivity;->news_listener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_0

    .line 284
    :pswitch_5
    invoke-direct {p0}, Lcom/perm/kate/SearchActivity;->hideSearch()V

    .line 285
    iget-object v0, p0, Lcom/perm/kate/SearchActivity;->lv_search_list:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/perm/kate/SearchActivity;->doc_listener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_0

    .line 262
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private hideSearch()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1430
    iget-boolean v0, p0, Lcom/perm/kate/SearchActivity;->shownHistory:Z

    if-nez v0, :cond_1

    .line 1443
    :cond_0
    :goto_0
    return-void

    .line 1432
    :cond_1
    iget-object v0, p0, Lcom/perm/kate/SearchActivity;->history_adapter:Lcom/perm/kate/SearchHistoryAdapter;

    if-eqz v0, :cond_0

    .line 1434
    iget-object v0, p0, Lcom/perm/kate/SearchActivity;->lv_search_list:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 1436
    iget-object v0, p0, Lcom/perm/kate/SearchActivity;->lv_search_list:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    instance-of v0, v0, Lcom/perm/kate/SearchHistoryAdapter;

    if-eqz v0, :cond_2

    .line 1437
    iget-object v0, p0, Lcom/perm/kate/SearchActivity;->lv_search_list:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1438
    iget-object v0, p0, Lcom/perm/kate/SearchActivity;->lv_search_list:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1439
    iget-object v0, p0, Lcom/perm/kate/SearchActivity;->history_adapter:Lcom/perm/kate/SearchHistoryAdapter;

    invoke-virtual {v0}, Lcom/perm/kate/SearchHistoryAdapter;->Destroy()V

    .line 1440
    iput-object v1, p0, Lcom/perm/kate/SearchActivity;->history_adapter:Lcom/perm/kate/SearchHistoryAdapter;

    .line 1442
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/perm/kate/SearchActivity;->shownHistory:Z

    goto :goto_0
.end method

.method private loadMore()V
    .locals 1

    .prologue
    .line 582
    new-instance v0, Lcom/perm/kate/SearchActivity$14;

    invoke-direct {v0, p0}, Lcom/perm/kate/SearchActivity$14;-><init>(Lcom/perm/kate/SearchActivity;)V

    .line 623
    invoke-virtual {v0}, Lcom/perm/kate/SearchActivity$14;->start()V

    .line 624
    return-void
.end method

.method private localDialogsSearch()V
    .locals 10

    .prologue
    .line 1109
    iget-object v5, p0, Lcom/perm/kate/SearchActivity;->tb_search:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1110
    .local v2, "query":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_5

    const-string v5, "  "

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 1111
    sget-object v5, Lcom/perm/kate/SearchActivity$MessagesSearchType;->DialogsSearch:Lcom/perm/kate/SearchActivity$MessagesSearchType;

    iput-object v5, p0, Lcom/perm/kate/SearchActivity;->messagesSearchType:Lcom/perm/kate/SearchActivity$MessagesSearchType;

    .line 1112
    sget-object v5, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v5}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 1113
    .local v4, "uid":Ljava/lang/Long;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/perm/kate/SearchActivity;->searchDialogsItems:Ljava/util/ArrayList;

    .line 1114
    sget-object v5, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7, v2}, Lcom/perm/kate/db/DataHelper;->fetchTopFriends(JLjava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1115
    .local v0, "friends_cursor":Landroid/database/Cursor;
    if-nez v0, :cond_1

    .line 1144
    .end local v0    # "friends_cursor":Landroid/database/Cursor;
    .end local v4    # "uid":Ljava/lang/Long;
    :cond_0
    :goto_0
    return-void

    .line 1117
    .restart local v0    # "friends_cursor":Landroid/database/Cursor;
    .restart local v4    # "uid":Ljava/lang/Long;
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-lez v5, :cond_3

    .line 1118
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1119
    new-instance v1, Lcom/perm/kate/api/SearchDialogItem;

    invoke-direct {v1}, Lcom/perm/kate/api/SearchDialogItem;-><init>()V

    .line 1120
    .local v1, "item":Lcom/perm/kate/api/SearchDialogItem;
    new-instance v3, Lcom/perm/kate/api/User;

    invoke-direct {v3}, Lcom/perm/kate/api/User;-><init>()V

    .line 1121
    .local v3, "u":Lcom/perm/kate/api/User;
    const-string v5, "_id"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, v3, Lcom/perm/kate/api/User;->uid:J

    .line 1122
    const-string v5, "first_name"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    .line 1123
    const-string v5, "last_name"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    .line 1124
    const-string v5, "photo_medium_rec"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/perm/kate/api/User;->photo_medium_rec:Ljava/lang/String;

    .line 1125
    const-string v5, "online"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const-wide/16 v8, 0x1

    cmp-long v5, v6, v8

    if-nez v5, :cond_4

    const/4 v5, 0x1

    :goto_1
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, v3, Lcom/perm/kate/api/User;->online:Ljava/lang/Boolean;

    .line 1126
    iput-object v3, v1, Lcom/perm/kate/api/SearchDialogItem;->user:Lcom/perm/kate/api/User;

    .line 1127
    const-string v5, "profile"

    iput-object v5, v1, Lcom/perm/kate/api/SearchDialogItem;->str_type:Ljava/lang/String;

    .line 1128
    sget-object v5, Lcom/perm/kate/api/SearchDialogItem$SDIType;->USER:Lcom/perm/kate/api/SearchDialogItem$SDIType;

    iput-object v5, v1, Lcom/perm/kate/api/SearchDialogItem;->type:Lcom/perm/kate/api/SearchDialogItem$SDIType;

    .line 1129
    iget-object v5, p0, Lcom/perm/kate/SearchActivity;->searchDialogsItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1130
    invoke-interface {v0}, Landroid/database/Cursor;->getPosition()I

    move-result v5

    const/16 v6, 0x14

    if-le v5, v6, :cond_2

    .line 1134
    .end local v1    # "item":Lcom/perm/kate/api/SearchDialogItem;
    .end local v3    # "u":Lcom/perm/kate/api/User;
    :cond_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1135
    invoke-direct {p0}, Lcom/perm/kate/SearchActivity;->displaySearchedDialogsInUI()V

    goto :goto_0

    .line 1125
    .restart local v1    # "item":Lcom/perm/kate/api/SearchDialogItem;
    .restart local v3    # "u":Lcom/perm/kate/api/User;
    :cond_4
    const/4 v5, 0x0

    goto :goto_1

    .line 1137
    .end local v0    # "friends_cursor":Landroid/database/Cursor;
    .end local v1    # "item":Lcom/perm/kate/api/SearchDialogItem;
    .end local v3    # "u":Lcom/perm/kate/api/User;
    .end local v4    # "uid":Ljava/lang/Long;
    :cond_5
    iget-object v5, p0, Lcom/perm/kate/SearchActivity;->messagesSearchType:Lcom/perm/kate/SearchActivity$MessagesSearchType;

    sget-object v6, Lcom/perm/kate/SearchActivity$MessagesSearchType;->None:Lcom/perm/kate/SearchActivity$MessagesSearchType;

    if-eq v5, v6, :cond_6

    .line 1138
    sget-object v5, Lcom/perm/kate/SearchActivity$MessagesSearchType;->None:Lcom/perm/kate/SearchActivity$MessagesSearchType;

    iput-object v5, p0, Lcom/perm/kate/SearchActivity;->messagesSearchType:Lcom/perm/kate/SearchActivity$MessagesSearchType;

    .line 1140
    :cond_6
    iget-object v5, p0, Lcom/perm/kate/SearchActivity;->searchDialogsItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 1141
    iget-object v5, p0, Lcom/perm/kate/SearchActivity;->sd_adapter:Lcom/perm/kate/SearchedDialogsAdapter;

    if-eqz v5, :cond_0

    .line 1142
    iget-object v5, p0, Lcom/perm/kate/SearchActivity;->sd_adapter:Lcom/perm/kate/SearchedDialogsAdapter;

    invoke-virtual {v5}, Lcom/perm/kate/SearchedDialogsAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0
.end method

.method private modifySearchDialogsItems(Ljava/util/ArrayList;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/SearchDialogItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "iteams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/SearchDialogItem;>;"
    const-wide/16 v8, 0x0

    .line 1210
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_1

    .line 1237
    :cond_0
    :goto_0
    return-void

    .line 1215
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_5

    .line 1216
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/perm/kate/api/SearchDialogItem;

    .line 1217
    .local v3, "item":Lcom/perm/kate/api/SearchDialogItem;
    iget-object v5, v3, Lcom/perm/kate/api/SearchDialogItem;->user:Lcom/perm/kate/api/User;

    if-eqz v5, :cond_2

    iget-object v5, v3, Lcom/perm/kate/api/SearchDialogItem;->user:Lcom/perm/kate/api/User;

    iget-wide v6, v5, Lcom/perm/kate/api/User;->uid:J

    .line 1218
    .local v6, "user_id":J
    :goto_2
    iget-object v5, v3, Lcom/perm/kate/api/SearchDialogItem;->chat:Lcom/perm/kate/api/Message;

    if-eqz v5, :cond_3

    iget-object v5, v3, Lcom/perm/kate/api/SearchDialogItem;->chat:Lcom/perm/kate/api/Message;

    iget-object v5, v5, Lcom/perm/kate/api/Message;->chat_id:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 1219
    .local v0, "chat_id":J
    :goto_3
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v5, v6, v7}, Lcom/perm/kate/ThreadIdHelper;->makeThreadId(Ljava/lang/Long;J)J

    move-result-wide v10

    invoke-static {v10, v11}, Lcom/perm/kate/HiddenChats;->isHiddenNow(J)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1220
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .end local v0    # "chat_id":J
    .end local v6    # "user_id":J
    :cond_2
    move-wide v6, v8

    .line 1217
    goto :goto_2

    .restart local v6    # "user_id":J
    :cond_3
    move-wide v0, v8

    .line 1218
    goto :goto_3

    .line 1222
    .restart local v0    # "chat_id":J
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1225
    .end local v0    # "chat_id":J
    .end local v3    # "item":Lcom/perm/kate/api/SearchDialogItem;
    .end local v6    # "user_id":J
    :cond_5
    iget-object v5, p0, Lcom/perm/kate/SearchActivity;->searchDialogsItems:Ljava/util/ArrayList;

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/perm/kate/SearchActivity;->searchDialogsItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_8

    .line 1226
    :cond_6
    iput-object p1, p0, Lcom/perm/kate/SearchActivity;->searchDialogsItems:Ljava/util/ArrayList;

    .line 1236
    :cond_7
    invoke-direct {p0}, Lcom/perm/kate/SearchActivity;->displaySearchedDialogsInUI()V

    goto :goto_0

    .line 1228
    :cond_8
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1229
    .local v4, "uids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    iget-object v5, p0, Lcom/perm/kate/SearchActivity;->searchDialogsItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_9
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/perm/kate/api/SearchDialogItem;

    .line 1230
    .restart local v3    # "item":Lcom/perm/kate/api/SearchDialogItem;
    iget-object v8, v3, Lcom/perm/kate/api/SearchDialogItem;->type:Lcom/perm/kate/api/SearchDialogItem$SDIType;

    sget-object v9, Lcom/perm/kate/api/SearchDialogItem$SDIType;->USER:Lcom/perm/kate/api/SearchDialogItem$SDIType;

    if-ne v8, v9, :cond_9

    .line 1231
    iget-object v8, v3, Lcom/perm/kate/api/SearchDialogItem;->user:Lcom/perm/kate/api/User;

    iget-wide v8, v8, Lcom/perm/kate/api/User;->uid:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 1232
    .end local v3    # "item":Lcom/perm/kate/api/SearchDialogItem;
    :cond_a
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_b
    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/perm/kate/api/SearchDialogItem;

    .line 1233
    .restart local v3    # "item":Lcom/perm/kate/api/SearchDialogItem;
    iget-object v8, v3, Lcom/perm/kate/api/SearchDialogItem;->type:Lcom/perm/kate/api/SearchDialogItem$SDIType;

    sget-object v9, Lcom/perm/kate/api/SearchDialogItem$SDIType;->USER:Lcom/perm/kate/api/SearchDialogItem$SDIType;

    if-ne v8, v9, :cond_c

    iget-object v8, v3, Lcom/perm/kate/api/SearchDialogItem;->type:Lcom/perm/kate/api/SearchDialogItem$SDIType;

    sget-object v9, Lcom/perm/kate/api/SearchDialogItem$SDIType;->USER:Lcom/perm/kate/api/SearchDialogItem$SDIType;

    if-ne v8, v9, :cond_b

    iget-object v8, v3, Lcom/perm/kate/api/SearchDialogItem;->user:Lcom/perm/kate/api/User;

    iget-wide v8, v8, Lcom/perm/kate/api/User;->uid:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_b

    .line 1234
    :cond_c
    iget-object v8, p0, Lcom/perm/kate/SearchActivity;->searchDialogsItems:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5
.end method

.method private newsRequeryOnUiThread(Lcom/perm/kate/api/Newsfeed;)V
    .locals 1
    .param p1, "newsfeed"    # Lcom/perm/kate/api/Newsfeed;

    .prologue
    .line 1361
    new-instance v0, Lcom/perm/kate/SearchActivity$38;

    invoke-direct {v0, p0, p1}, Lcom/perm/kate/SearchActivity$38;-><init>(Lcom/perm/kate/SearchActivity;Lcom/perm/kate/api/Newsfeed;)V

    invoke-virtual {p0, v0}, Lcom/perm/kate/SearchActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1369
    return-void
.end method

.method private onSearch()V
    .locals 3

    .prologue
    .line 246
    iget-object v1, p0, Lcom/perm/kate/SearchActivity;->tb_search:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 247
    .local v0, "query":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/perm/kate/SearchActivity;->searchType:Lcom/perm/kate/SearchActivity$SearchType;

    sget-object v2, Lcom/perm/kate/SearchActivity$SearchType;->User:Lcom/perm/kate/SearchActivity$SearchType;

    if-ne v1, v2, :cond_2

    .line 248
    :cond_1
    iget-object v1, p0, Lcom/perm/kate/SearchActivity;->searchType:Lcom/perm/kate/SearchActivity$SearchType;

    sget-object v2, Lcom/perm/kate/SearchActivity$SearchType;->None:Lcom/perm/kate/SearchActivity$SearchType;

    if-ne v1, v2, :cond_3

    .line 249
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/perm/kate/SearchActivity;->showSearchTypeDialog(Z)V

    .line 258
    :cond_2
    :goto_0
    return-void

    .line 250
    :cond_3
    iget-object v1, p0, Lcom/perm/kate/SearchActivity;->searchType:Lcom/perm/kate/SearchActivity$SearchType;

    sget-object v2, Lcom/perm/kate/SearchActivity$SearchType;->Message:Lcom/perm/kate/SearchActivity$SearchType;

    if-ne v1, v2, :cond_4

    .line 251
    invoke-static {v0, p0}, Lcom/perm/kate/history/SearchHistoryHelper;->addItem(Ljava/lang/String;Landroid/content/Context;)V

    .line 252
    invoke-virtual {p0}, Lcom/perm/kate/SearchActivity;->performMessagesSearch()V

    goto :goto_0

    .line 254
    :cond_4
    invoke-static {v0, p0}, Lcom/perm/kate/history/SearchHistoryHelper;->addItem(Ljava/lang/String;Landroid/content/Context;)V

    .line 255
    invoke-direct {p0, v0}, Lcom/perm/kate/SearchActivity;->doSearch(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private performDialogsSearch()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1169
    iget-object v1, p0, Lcom/perm/kate/SearchActivity;->messagesSearchType:Lcom/perm/kate/SearchActivity$MessagesSearchType;

    sget-object v2, Lcom/perm/kate/SearchActivity$MessagesSearchType;->DialogsSearch:Lcom/perm/kate/SearchActivity$MessagesSearchType;

    if-eq v1, v2, :cond_1

    .line 1207
    :cond_0
    :goto_0
    return-void

    .line 1171
    :cond_1
    iget-object v1, p0, Lcom/perm/kate/SearchActivity;->tb_search:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1172
    .local v0, "query":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1173
    const/4 v1, 0x0

    iput v1, p0, Lcom/perm/kate/SearchActivity;->state:I

    .line 1174
    iget-object v1, p0, Lcom/perm/kate/SearchActivity;->lv_search_list:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1175
    iget-object v1, p0, Lcom/perm/kate/SearchActivity;->lv_search_list:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 1176
    new-instance v1, Lcom/perm/kate/SearchActivity$32;

    invoke-direct {v1, p0, v0}, Lcom/perm/kate/SearchActivity$32;-><init>(Lcom/perm/kate/SearchActivity;Ljava/lang/String;)V

    .line 1201
    invoke-virtual {v1}, Lcom/perm/kate/SearchActivity$32;->start()V

    goto :goto_0

    .line 1203
    :cond_2
    iget-object v1, p0, Lcom/perm/kate/SearchActivity;->messagesSearchType:Lcom/perm/kate/SearchActivity$MessagesSearchType;

    sget-object v2, Lcom/perm/kate/SearchActivity$MessagesSearchType;->None:Lcom/perm/kate/SearchActivity$MessagesSearchType;

    if-eq v1, v2, :cond_0

    .line 1204
    sget-object v1, Lcom/perm/kate/SearchActivity$MessagesSearchType;->None:Lcom/perm/kate/SearchActivity$MessagesSearchType;

    iput-object v1, p0, Lcom/perm/kate/SearchActivity;->messagesSearchType:Lcom/perm/kate/SearchActivity$MessagesSearchType;

    goto :goto_0
.end method

.method private requeryOnUiThread()V
    .locals 1

    .prologue
    .line 627
    new-instance v0, Lcom/perm/kate/SearchActivity$15;

    invoke-direct {v0, p0}, Lcom/perm/kate/SearchActivity$15;-><init>(Lcom/perm/kate/SearchActivity;)V

    invoke-virtual {p0, v0}, Lcom/perm/kate/SearchActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 633
    return-void
.end method

.method private setButtonLabelBySearchParams()V
    .locals 2

    .prologue
    .line 694
    iget-object v0, p0, Lcom/perm/kate/SearchActivity;->btn_add_parameters:Landroid/widget/Button;

    if-nez v0, :cond_0

    .line 701
    :goto_0
    return-void

    .line 696
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/SearchActivity;->label_for_button:Ljava/lang/String;

    invoke-static {v0}, Lcom/perm/kate/Helper;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 697
    iget-object v0, p0, Lcom/perm/kate/SearchActivity;->btn_add_parameters:Landroid/widget/Button;

    iget-object v1, p0, Lcom/perm/kate/SearchActivity;->label_for_button:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 699
    :cond_1
    iget-object v0, p0, Lcom/perm/kate/SearchActivity;->btn_add_parameters:Landroid/widget/Button;

    const v1, 0x7f070119

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0
.end method

.method private setHeaderTitleByType()V
    .locals 6

    .prologue
    .line 189
    iget-object v1, p0, Lcom/perm/kate/SearchActivity;->searchType:Lcom/perm/kate/SearchActivity$SearchType;

    sget-object v2, Lcom/perm/kate/SearchActivity$SearchType;->Message:Lcom/perm/kate/SearchActivity$SearchType;

    if-ne v1, v2, :cond_0

    .line 190
    const v0, 0x7f0701d5

    .line 208
    .local v0, "str_id":I
    :goto_0
    invoke-virtual {p0, v0}, Lcom/perm/kate/SearchActivity;->setHeaderTitle(I)V

    .line 209
    return-void

    .line 191
    .end local v0    # "str_id":I
    :cond_0
    iget-object v1, p0, Lcom/perm/kate/SearchActivity;->searchType:Lcom/perm/kate/SearchActivity$SearchType;

    sget-object v2, Lcom/perm/kate/SearchActivity$SearchType;->Audio:Lcom/perm/kate/SearchActivity$SearchType;

    if-ne v1, v2, :cond_1

    .line 192
    const v0, 0x7f07045a

    .restart local v0    # "str_id":I
    goto :goto_0

    .line 193
    .end local v0    # "str_id":I
    :cond_1
    iget-object v1, p0, Lcom/perm/kate/SearchActivity;->searchType:Lcom/perm/kate/SearchActivity$SearchType;

    sget-object v2, Lcom/perm/kate/SearchActivity$SearchType;->Video:Lcom/perm/kate/SearchActivity$SearchType;

    if-ne v1, v2, :cond_2

    .line 194
    const v0, 0x7f070490

    .restart local v0    # "str_id":I
    goto :goto_0

    .line 195
    .end local v0    # "str_id":I
    :cond_2
    iget-object v1, p0, Lcom/perm/kate/SearchActivity;->searchType:Lcom/perm/kate/SearchActivity$SearchType;

    sget-object v2, Lcom/perm/kate/SearchActivity$SearchType;->Group:Lcom/perm/kate/SearchActivity$SearchType;

    if-ne v1, v2, :cond_3

    .line 196
    const v0, 0x7f0700c4

    .restart local v0    # "str_id":I
    goto :goto_0

    .line 197
    .end local v0    # "str_id":I
    :cond_3
    iget-object v1, p0, Lcom/perm/kate/SearchActivity;->searchType:Lcom/perm/kate/SearchActivity$SearchType;

    sget-object v2, Lcom/perm/kate/SearchActivity$SearchType;->User:Lcom/perm/kate/SearchActivity$SearchType;

    if-ne v1, v2, :cond_5

    .line 198
    iget-object v1, p0, Lcom/perm/kate/SearchActivity;->group_id:Ljava/lang/Long;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/perm/kate/SearchActivity;->group_id:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_4

    .line 199
    const v0, 0x7f070251

    .restart local v0    # "str_id":I
    goto :goto_0

    .line 201
    .end local v0    # "str_id":I
    :cond_4
    const v0, 0x7f07042d

    .restart local v0    # "str_id":I
    goto :goto_0

    .line 202
    .end local v0    # "str_id":I
    :cond_5
    iget-object v1, p0, Lcom/perm/kate/SearchActivity;->searchType:Lcom/perm/kate/SearchActivity$SearchType;

    sget-object v2, Lcom/perm/kate/SearchActivity$SearchType;->News:Lcom/perm/kate/SearchActivity$SearchType;

    if-ne v1, v2, :cond_6

    .line 203
    const v0, 0x7f07030d

    .restart local v0    # "str_id":I
    goto :goto_0

    .line 204
    .end local v0    # "str_id":I
    :cond_6
    iget-object v1, p0, Lcom/perm/kate/SearchActivity;->searchType:Lcom/perm/kate/SearchActivity$SearchType;

    sget-object v2, Lcom/perm/kate/SearchActivity$SearchType;->Doc:Lcom/perm/kate/SearchActivity$SearchType;

    if-ne v1, v2, :cond_7

    .line 205
    const v0, 0x7f07008e

    .restart local v0    # "str_id":I
    goto :goto_0

    .line 207
    .end local v0    # "str_id":I
    :cond_7
    const v0, 0x7f0701de

    .restart local v0    # "str_id":I
    goto :goto_0
.end method

.method private showAddParamsLayoutByType()V
    .locals 3

    .prologue
    .line 183
    iget-object v1, p0, Lcom/perm/kate/SearchActivity;->ll_add_parameters:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/perm/kate/SearchActivity;->searchType:Lcom/perm/kate/SearchActivity$SearchType;

    sget-object v2, Lcom/perm/kate/SearchActivity$SearchType;->User:Lcom/perm/kate/SearchActivity$SearchType;

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/perm/kate/SearchActivity;->searchType:Lcom/perm/kate/SearchActivity$SearchType;

    sget-object v2, Lcom/perm/kate/SearchActivity$SearchType;->Video:Lcom/perm/kate/SearchActivity$SearchType;

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/perm/kate/SearchActivity;->searchType:Lcom/perm/kate/SearchActivity$SearchType;

    sget-object v2, Lcom/perm/kate/SearchActivity$SearchType;->Audio:Lcom/perm/kate/SearchActivity$SearchType;

    if-ne v0, v2, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 185
    return-void

    .line 183
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private showMessage(Lcom/perm/kate/api/Message;)V
    .locals 4
    .param p1, "m"    # Lcom/perm/kate/api/Message;

    .prologue
    .line 1288
    if-nez p1, :cond_0

    .line 1296
    :goto_0
    return-void

    .line 1291
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/perm/kate/DialogAttachmentsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1292
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "chat_id"

    iget-object v2, p1, Lcom/perm/kate/api/Message;->chat_id:Ljava/lang/Long;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1293
    const-string v1, "user_id"

    iget-wide v2, p1, Lcom/perm/kate/api/Message;->uid:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1294
    const-string v1, "message_id"

    iget-wide v2, p1, Lcom/perm/kate/api/Message;->mid:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1295
    invoke-virtual {p0, v0}, Lcom/perm/kate/SearchActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private showMessageThread(JJ)V
    .locals 5
    .param p1, "message_uid"    # J
    .param p3, "chat_id"    # J

    .prologue
    .line 1278
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1279
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/perm/kate/MessageThreadActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1280
    const-wide/16 v2, 0x0

    cmp-long v1, p3, v2

    if-lez v1, :cond_0

    .line 1281
    const-string v1, "com.perm.kate.chat_id"

    invoke-virtual {v0, v1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1284
    :goto_0
    invoke-virtual {p0, v0}, Lcom/perm/kate/SearchActivity;->startActivity(Landroid/content/Intent;)V

    .line 1285
    return-void

    .line 1283
    :cond_0
    const-string v1, "com.perm.kate.message_uid"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    goto :goto_0
.end method

.method private startHandlerDialogsSearch()V
    .locals 4

    .prologue
    .line 1151
    sget-object v0, Lcom/perm/kate/SearchActivity$MessagesSearchType;->DialogsSearch:Lcom/perm/kate/SearchActivity$MessagesSearchType;

    iput-object v0, p0, Lcom/perm/kate/SearchActivity;->messagesSearchType:Lcom/perm/kate/SearchActivity$MessagesSearchType;

    .line 1152
    iget-object v0, p0, Lcom/perm/kate/SearchActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/perm/kate/SearchActivity;->startDialogsSearchRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1153
    iget-object v0, p0, Lcom/perm/kate/SearchActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/perm/kate/SearchActivity;->startDialogsSearchRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x258

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1154
    return-void
.end method


# virtual methods
.method protected fillMenuItems(Landroid/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v2, 0x0

    .line 1382
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 1383
    const v0, 0x7f0e0393

    const v1, 0x7f070167

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 1384
    const/4 v0, 0x1

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "request_code"    # I
    .param p2, "result_code"    # I
    .param p3, "i"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 754
    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    .line 755
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 756
    if-eqz p3, :cond_0

    .line 757
    const-string v0, "com.perm.kate.sort"

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/SearchActivity;->sort:Ljava/lang/Integer;

    .line 758
    const-string v0, "com.perm.kate.city"

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/SearchActivity;->city:Ljava/lang/Integer;

    .line 759
    const-string v0, "com.perm.kate.country"

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/SearchActivity;->country:Ljava/lang/Integer;

    .line 760
    const-string v0, "com.perm.kate.hometown"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/SearchActivity;->hometown:Ljava/lang/String;

    .line 761
    const-string v0, "com.perm.kate.university_country"

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/SearchActivity;->university_country:Ljava/lang/Integer;

    .line 762
    const-string v0, "com.perm.kate.university"

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/SearchActivity;->university:Ljava/lang/Integer;

    .line 763
    const-string v0, "com.perm.kate.university_year"

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/SearchActivity;->university_year:Ljava/lang/Integer;

    .line 764
    const-string v0, "com.perm.kate.sex"

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/SearchActivity;->sex:Ljava/lang/Integer;

    .line 765
    const-string v0, "com.perm.kate.status"

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/SearchActivity;->status:Ljava/lang/Integer;

    .line 766
    const-string v0, "com.perm.kate.age_from"

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/SearchActivity;->age_from:Ljava/lang/Integer;

    .line 767
    const-string v0, "com.perm.kate.age_to"

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/SearchActivity;->age_to:Ljava/lang/Integer;

    .line 768
    const-string v0, "com.perm.kate.birth_day"

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/SearchActivity;->birth_day:Ljava/lang/Integer;

    .line 769
    const-string v0, "com.perm.kate.birth_month"

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/SearchActivity;->birth_month:Ljava/lang/Integer;

    .line 770
    const-string v0, "com.perm.kate.birth_year"

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/SearchActivity;->birth_year:Ljava/lang/Integer;

    .line 771
    const-string v0, "com.perm.kate.online"

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/SearchActivity;->online:Ljava/lang/Integer;

    .line 772
    const-string v0, "com.perm.kate.has_photo"

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/SearchActivity;->has_photo:Ljava/lang/Integer;

    .line 773
    const-string v0, "com.perm.kate.school_country"

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/SearchActivity;->school_country:Ljava/lang/Integer;

    .line 774
    const-string v0, "com.perm.kate.school_city"

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/SearchActivity;->school_city:Ljava/lang/Integer;

    .line 775
    const-string v0, "com.perm.kate.school"

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/SearchActivity;->school:Ljava/lang/Integer;

    .line 776
    const-string v0, "com.perm.kate.school_year"

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/SearchActivity;->school_year:Ljava/lang/Integer;

    .line 777
    const-string v0, "com.perm.kate.religion"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/SearchActivity;->religion:Ljava/lang/String;

    .line 778
    const-string v0, "com.perm.kate.interests"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/SearchActivity;->interests:Ljava/lang/String;

    .line 779
    const-string v0, "com.perm.kate.company"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/SearchActivity;->company:Ljava/lang/String;

    .line 780
    const-string v0, "com.perm.kate.position"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/SearchActivity;->position:Ljava/lang/String;

    .line 781
    const-string v0, "com.perm.kate.label_for_button"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/SearchActivity;->label_for_button:Ljava/lang/String;

    .line 782
    invoke-direct {p0}, Lcom/perm/kate/SearchActivity;->setButtonLabelBySearchParams()V

    .line 783
    invoke-direct {p0}, Lcom/perm/kate/SearchActivity;->onSearch()V

    .line 786
    :cond_0
    if-ne p1, v2, :cond_1

    .line 787
    if-eqz p3, :cond_1

    .line 788
    const-string v0, "com.perm.kate.adult"

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/SearchActivity;->adult:Ljava/lang/Integer;

    .line 789
    const-string v0, "com.perm.kate.filters"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/SearchActivity;->filters:Ljava/lang/String;

    .line 790
    const-string v0, "com.perm.kate.sort"

    invoke-virtual {p3, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/SearchActivity;->video_sort:Ljava/lang/Integer;

    .line 791
    const-string v0, "com.perm.kate.hd"

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/SearchActivity;->hd:Ljava/lang/Integer;

    .line 792
    invoke-direct {p0}, Lcom/perm/kate/SearchActivity;->onSearch()V

    .line 795
    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 796
    if-eqz p3, :cond_2

    .line 797
    const-string v0, "com.perm.kate.performer_only"

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/SearchActivity;->performer_only:Ljava/lang/Integer;

    .line 798
    invoke-direct {p0}, Lcom/perm/kate/SearchActivity;->onSearch()V

    .line 802
    :cond_2
    invoke-super {p0, p1, p2, p3}, Lcom/perm/kate/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 803
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 22
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 79
    invoke-super/range {p0 .. p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 80
    const v17, 0x7f0300f1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/perm/kate/SearchActivity;->setContentView(I)V

    .line 81
    invoke-virtual/range {p0 .. p0}, Lcom/perm/kate/SearchActivity;->setupMenuButton()V

    .line 82
    invoke-virtual/range {p0 .. p0}, Lcom/perm/kate/SearchActivity;->setButtonsBg()V

    .line 83
    invoke-virtual/range {p0 .. p0}, Lcom/perm/kate/SearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v17

    const-string v18, "com.perm.kate.select_audio"

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/perm/kate/SearchActivity;->select_audio:Z

    .line 84
    invoke-virtual/range {p0 .. p0}, Lcom/perm/kate/SearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v17

    const-string v18, "com.perm.kate.select_video"

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/perm/kate/SearchActivity;->select_video:Z

    .line 85
    invoke-virtual/range {p0 .. p0}, Lcom/perm/kate/SearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v17

    const-string v18, "com.perm.kate.select_user"

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/perm/kate/SearchActivity;->select_user:Z

    .line 86
    invoke-virtual/range {p0 .. p0}, Lcom/perm/kate/SearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v17

    const-string v18, "com.perm.kate.search_audio"

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v11

    .line 87
    .local v11, "search_audio":Z
    invoke-virtual/range {p0 .. p0}, Lcom/perm/kate/SearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v17

    const-string v18, "com.perm.kate.search_video"

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v16

    .line 88
    .local v16, "search_video":Z
    invoke-virtual/range {p0 .. p0}, Lcom/perm/kate/SearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v17

    const-string v18, "com.perm.kate.search_group"

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v12

    .line 89
    .local v12, "search_group":Z
    invoke-virtual/range {p0 .. p0}, Lcom/perm/kate/SearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v17

    const-string v18, "com.perm.kate.search_user"

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v15

    .line 90
    .local v15, "search_user":Z
    invoke-virtual/range {p0 .. p0}, Lcom/perm/kate/SearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v17

    const-string v18, "com.perm.kate.search_news"

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v14

    .line 91
    .local v14, "search_news":Z
    invoke-virtual/range {p0 .. p0}, Lcom/perm/kate/SearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v17

    const-string v18, "com.perm.kate.members_for_group"

    const-wide/16 v20, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    .line 92
    .local v8, "members_for_group":J
    invoke-virtual/range {p0 .. p0}, Lcom/perm/kate/SearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v17

    const-string v18, "com.perm.kate.search_messages"

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v13

    .line 93
    .local v13, "search_messages":Z
    invoke-virtual/range {p0 .. p0}, Lcom/perm/kate/SearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v17

    const-string v18, "com.perm.kate.peer_id"

    const-wide/16 v20, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 94
    .local v4, "_peer_id":J
    const-wide/16 v18, 0x0

    cmp-long v17, v8, v18

    if-lez v17, :cond_0

    .line 95
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/perm/kate/SearchActivity;->group_id:Ljava/lang/Long;

    .line 96
    :cond_0
    const-wide/16 v18, 0x0

    cmp-long v17, v4, v18

    if-eqz v17, :cond_1

    .line 97
    sget-object v17, Lcom/perm/kate/SearchActivity$MessagesSearchType;->UserMessagesSearch:Lcom/perm/kate/SearchActivity$MessagesSearchType;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/perm/kate/SearchActivity;->messagesSearchType:Lcom/perm/kate/SearchActivity$MessagesSearchType;

    .line 98
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/perm/kate/SearchActivity;->peer_id:Ljava/lang/Long;

    .line 100
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/perm/kate/SearchActivity;->select_audio:Z

    move/from16 v17, v0

    if-nez v17, :cond_2

    if-eqz v11, :cond_8

    .line 101
    :cond_2
    sget-object v17, Lcom/perm/kate/SearchActivity$SearchType;->Audio:Lcom/perm/kate/SearchActivity$SearchType;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/perm/kate/SearchActivity;->searchType:Lcom/perm/kate/SearchActivity$SearchType;

    .line 112
    :cond_3
    :goto_0
    const v17, 0x7f0e0305

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/perm/kate/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ListView;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/perm/kate/SearchActivity;->lv_search_list:Landroid/widget/ListView;

    .line 113
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/SearchActivity;->lv_search_list:Landroid/widget/ListView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/SearchActivity;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 114
    const v17, 0x7f0e0303

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/perm/kate/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/EditText;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/perm/kate/SearchActivity;->tb_search:Landroid/widget/EditText;

    .line 115
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/SearchActivity;->tb_search:Landroid/widget/EditText;

    move-object/from16 v17, v0

    new-instance v18, Lcom/perm/kate/SearchActivity$1;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/perm/kate/SearchActivity$1;-><init>(Lcom/perm/kate/SearchActivity;)V

    invoke-virtual/range {v17 .. v18}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 127
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/SearchActivity;->tb_search:Landroid/widget/EditText;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/SearchActivity;->search_text_watcher:Landroid/text/TextWatcher;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 128
    const v17, 0x7f0e01a1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/perm/kate/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ImageButton;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/perm/kate/SearchActivity;->btn_search:Landroid/widget/ImageButton;

    .line 129
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/SearchActivity;->btn_search:Landroid/widget/ImageButton;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/SearchActivity;->search_OnClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    const v17, 0x7f0e00a3

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/perm/kate/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/FrameLayout;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/perm/kate/SearchActivity;->ll_add_parameters:Landroid/widget/FrameLayout;

    .line 131
    const v17, 0x7f0e0304

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/perm/kate/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/Button;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/perm/kate/SearchActivity;->btn_add_parameters:Landroid/widget/Button;

    .line 132
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/SearchActivity;->btn_add_parameters:Landroid/widget/Button;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/SearchActivity;->add_param_OnClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/SearchActivity;->playerCallback:Lcom/perm/kate/Player$PlayerCallback;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/perm/kate/PlaybackService;->addCallback(Lcom/perm/kate/Player$PlayerCallback;)V

    .line 134
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/perm/kate/SearchActivity;->state:I

    .line 135
    invoke-direct/range {p0 .. p0}, Lcom/perm/kate/SearchActivity;->setHeaderTitleByType()V

    .line 136
    if-eqz v11, :cond_10

    .line 137
    invoke-virtual/range {p0 .. p0}, Lcom/perm/kate/SearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v17

    const-string v18, "com.perm.kate.search_audio_artist"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 138
    .local v6, "artist":Ljava/lang/String;
    invoke-static {v6}, Lcom/perm/kate/Helper;->isNotEmpty(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_f

    .line 139
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/SearchActivity;->tb_search:Landroid/widget/EditText;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 140
    invoke-direct/range {p0 .. p0}, Lcom/perm/kate/SearchActivity;->onSearch()V

    .line 153
    .end local v6    # "artist":Ljava/lang/String;
    :cond_4
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/perm/kate/SearchActivity;->showAddParamsLayoutByType()V

    .line 154
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/SearchActivity;->searchType:Lcom/perm/kate/SearchActivity$SearchType;

    move-object/from16 v17, v0

    sget-object v18, Lcom/perm/kate/SearchActivity$SearchType;->None:Lcom/perm/kate/SearchActivity$SearchType;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_5

    .line 155
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/perm/kate/SearchActivity;->showSearchTypeDialog(Z)V

    .line 157
    :cond_5
    const v17, 0x7f0e0091

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/perm/kate/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ImageButton;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/perm/kate/SearchActivity;->btn_clear:Landroid/widget/ImageButton;

    .line 158
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/SearchActivity;->btn_clear:Landroid/widget/ImageButton;

    move-object/from16 v17, v0

    new-instance v18, Lcom/perm/kate/SearchActivity$2;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/perm/kate/SearchActivity$2;-><init>(Lcom/perm/kate/SearchActivity;)V

    invoke-virtual/range {v17 .. v18}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    const v17, 0x7f0e02be

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/perm/kate/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/perm/kate/MiniPlayer;

    .line 172
    .local v10, "player":Lcom/perm/kate/MiniPlayer;
    if-eqz v10, :cond_6

    .line 173
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v10, v0}, Lcom/perm/kate/MiniPlayer;->setActive(Z)V

    .line 174
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/perm/kate/SearchActivity;->select_audio:Z

    move/from16 v17, v0

    if-eqz v17, :cond_7

    .line 175
    const v17, 0x7f0e00aa

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/perm/kate/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setVisibility(I)V

    .line 176
    const v17, 0x7f0e019f

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/perm/kate/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/Button;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/perm/kate/SearchActivity;->btn_attach:Landroid/widget/Button;

    .line 177
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/SearchActivity;->btn_attach:Landroid/widget/Button;

    move-object/from16 v17, v0

    const v18, 0x7f07003a

    invoke-virtual/range {v17 .. v18}, Landroid/widget/Button;->setText(I)V

    .line 178
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/SearchActivity;->btn_attach:Landroid/widget/Button;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/SearchActivity;->selectClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    :cond_7
    return-void

    .line 102
    .end local v10    # "player":Lcom/perm/kate/MiniPlayer;
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/perm/kate/SearchActivity;->select_video:Z

    move/from16 v17, v0

    if-nez v17, :cond_9

    if-eqz v16, :cond_a

    .line 103
    :cond_9
    sget-object v17, Lcom/perm/kate/SearchActivity$SearchType;->Video:Lcom/perm/kate/SearchActivity$SearchType;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/perm/kate/SearchActivity;->searchType:Lcom/perm/kate/SearchActivity$SearchType;

    goto/16 :goto_0

    .line 104
    :cond_a
    if-eqz v12, :cond_b

    .line 105
    sget-object v17, Lcom/perm/kate/SearchActivity$SearchType;->Group:Lcom/perm/kate/SearchActivity$SearchType;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/perm/kate/SearchActivity;->searchType:Lcom/perm/kate/SearchActivity$SearchType;

    goto/16 :goto_0

    .line 106
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/perm/kate/SearchActivity;->select_user:Z

    move/from16 v17, v0

    if-nez v17, :cond_c

    if-eqz v15, :cond_d

    .line 107
    :cond_c
    sget-object v17, Lcom/perm/kate/SearchActivity$SearchType;->User:Lcom/perm/kate/SearchActivity$SearchType;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/perm/kate/SearchActivity;->searchType:Lcom/perm/kate/SearchActivity$SearchType;

    goto/16 :goto_0

    .line 108
    :cond_d
    if-eqz v14, :cond_e

    .line 109
    sget-object v17, Lcom/perm/kate/SearchActivity$SearchType;->News:Lcom/perm/kate/SearchActivity$SearchType;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/perm/kate/SearchActivity;->searchType:Lcom/perm/kate/SearchActivity$SearchType;

    goto/16 :goto_0

    .line 110
    :cond_e
    if-eqz v13, :cond_3

    .line 111
    sget-object v17, Lcom/perm/kate/SearchActivity$SearchType;->Message:Lcom/perm/kate/SearchActivity$SearchType;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/perm/kate/SearchActivity;->searchType:Lcom/perm/kate/SearchActivity$SearchType;

    goto/16 :goto_0

    .line 142
    .restart local v6    # "artist":Ljava/lang/String;
    :cond_f
    invoke-direct/range {p0 .. p0}, Lcom/perm/kate/SearchActivity;->displayHistory()V

    goto/16 :goto_1

    .line 143
    .end local v6    # "artist":Ljava/lang/String;
    :cond_10
    if-eqz v15, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/SearchActivity;->group_id:Ljava/lang/Long;

    move-object/from16 v17, v0

    if-eqz v17, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/SearchActivity;->group_id:Ljava/lang/Long;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    const-wide/16 v20, 0x0

    cmp-long v17, v18, v20

    if-lez v17, :cond_11

    .line 144
    invoke-direct/range {p0 .. p0}, Lcom/perm/kate/SearchActivity;->onSearch()V

    goto/16 :goto_1

    .line 145
    :cond_11
    if-eqz v14, :cond_12

    .line 146
    invoke-virtual/range {p0 .. p0}, Lcom/perm/kate/SearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v17

    const-string v18, "com.perm.kate.hashtag"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 147
    .local v7, "hashtag":Ljava/lang/String;
    invoke-static {v7}, Lcom/perm/kate/Helper;->isNotEmpty(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 148
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/SearchActivity;->tb_search:Landroid/widget/EditText;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 149
    invoke-direct/range {p0 .. p0}, Lcom/perm/kate/SearchActivity;->onSearch()V

    goto/16 :goto_1

    .line 152
    .end local v7    # "hashtag":Ljava/lang/String;
    :cond_12
    invoke-direct/range {p0 .. p0}, Lcom/perm/kate/SearchActivity;->displayHistory()V

    goto/16 :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 1375
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 1376
    invoke-virtual {p0, p1}, Lcom/perm/kate/SearchActivity;->fillMenuItems(Landroid/view/Menu;)Z

    .line 1377
    const/4 v0, 0x1

    return v0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 213
    iget-object v0, p0, Lcom/perm/kate/SearchActivity;->playerCallback:Lcom/perm/kate/Player$PlayerCallback;

    invoke-static {v0}, Lcom/perm/kate/PlaybackService;->removeCallback(Lcom/perm/kate/Player$PlayerCallback;)V

    .line 214
    iget-object v0, p0, Lcom/perm/kate/SearchActivity;->lv_search_list:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/perm/kate/SearchActivity;->lv_search_list:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    instance-of v0, v0, Lcom/perm/kate/SearchedMessagesAdapter;

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/perm/kate/SearchActivity;->lv_search_list:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/SearchedMessagesAdapter;

    invoke-virtual {v0}, Lcom/perm/kate/SearchedMessagesAdapter;->Destroy()V

    .line 216
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

    .line 217
    iget-object v0, p0, Lcom/perm/kate/SearchActivity;->lv_search_list:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/SearchedNewsAdapter;

    invoke-virtual {v0}, Lcom/perm/kate/SearchedNewsAdapter;->destroy()V

    .line 218
    :cond_1
    iget-object v0, p0, Lcom/perm/kate/SearchActivity;->lv_search_list:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 219
    iput-object v2, p0, Lcom/perm/kate/SearchActivity;->lv_search_list:Landroid/widget/ListView;

    .line 220
    iput-object v2, p0, Lcom/perm/kate/SearchActivity;->sd_adapter:Lcom/perm/kate/SearchedDialogsAdapter;

    .line 221
    iget-object v0, p0, Lcom/perm/kate/SearchActivity;->tb_search:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/perm/kate/SearchActivity;->search_text_watcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 222
    iput-object v2, p0, Lcom/perm/kate/SearchActivity;->handler:Landroid/os/Handler;

    .line 223
    iput-object v2, p0, Lcom/perm/kate/SearchActivity;->audioHelper:Lcom/perm/kate/AudioClickHelper;

    .line 224
    iget-object v0, p0, Lcom/perm/kate/SearchActivity;->history_adapter:Lcom/perm/kate/SearchHistoryAdapter;

    if-eqz v0, :cond_2

    .line 225
    iget-object v0, p0, Lcom/perm/kate/SearchActivity;->history_adapter:Lcom/perm/kate/SearchHistoryAdapter;

    invoke-virtual {v0}, Lcom/perm/kate/SearchHistoryAdapter;->Destroy()V

    .line 226
    iput-object v2, p0, Lcom/perm/kate/SearchActivity;->history_adapter:Lcom/perm/kate/SearchHistoryAdapter;

    .line 228
    :cond_2
    invoke-super {p0}, Lcom/perm/kate/BaseActivity;->onDestroy()V

    .line 229
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 1389
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1394
    :goto_0
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 1391
    :pswitch_0
    invoke-direct {p0}, Lcom/perm/kate/SearchActivity;->clearHistory()V

    goto :goto_0

    .line 1389
    :pswitch_data_0
    .packed-switch 0x7f0e0393
        :pswitch_0
    .end packed-switch
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 233
    invoke-direct {p0}, Lcom/perm/kate/SearchActivity;->onSearch()V

    .line 234
    const/4 v0, 0x1

    return v0
.end method

.method protected performMessagesSearch()V
    .locals 3

    .prologue
    .line 943
    const/4 v1, 0x0

    iput v1, p0, Lcom/perm/kate/SearchActivity;->state:I

    .line 944
    invoke-direct {p0}, Lcom/perm/kate/SearchActivity;->hideSearch()V

    .line 945
    iget-object v1, p0, Lcom/perm/kate/SearchActivity;->messagesSearchType:Lcom/perm/kate/SearchActivity$MessagesSearchType;

    sget-object v2, Lcom/perm/kate/SearchActivity$MessagesSearchType;->UserMessagesSearch:Lcom/perm/kate/SearchActivity$MessagesSearchType;

    if-eq v1, v2, :cond_0

    .line 946
    sget-object v1, Lcom/perm/kate/SearchActivity$MessagesSearchType;->MessagesSearch:Lcom/perm/kate/SearchActivity$MessagesSearchType;

    iput-object v1, p0, Lcom/perm/kate/SearchActivity;->messagesSearchType:Lcom/perm/kate/SearchActivity$MessagesSearchType;

    .line 947
    :cond_0
    iget-object v1, p0, Lcom/perm/kate/SearchActivity;->lv_search_list:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/perm/kate/SearchActivity;->listener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 948
    iget-object v1, p0, Lcom/perm/kate/SearchActivity;->lv_search_list:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/perm/kate/SearchActivity;->long_click_listener:Landroid/widget/AdapterView$OnItemLongClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 949
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, v1}, Lcom/perm/kate/SearchActivity;->displaySearchedMessages(Ljava/util/ArrayList;)V

    .line 950
    iget-object v1, p0, Lcom/perm/kate/SearchActivity;->tb_search:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 951
    .local v0, "query":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 952
    new-instance v1, Lcom/perm/kate/SearchActivity$24;

    invoke-direct {v1, p0, v0}, Lcom/perm/kate/SearchActivity$24;-><init>(Lcom/perm/kate/SearchActivity;Ljava/lang/String;)V

    .line 958
    invoke-virtual {v1}, Lcom/perm/kate/SearchActivity$24;->start()V

    .line 960
    :cond_1
    return-void
.end method

.method protected showSearchTypeDialog(Z)V
    .locals 7
    .param p1, "force_search"    # Z

    .prologue
    const/4 v6, 0x1

    .line 326
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 327
    .local v1, "menus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/MenuItemDetails;>;"
    new-instance v3, Lcom/perm/kate/MenuItemDetails;

    const v4, 0x7f07045a

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 328
    new-instance v3, Lcom/perm/kate/MenuItemDetails;

    const v4, 0x7f070490

    invoke-direct {v3, v4, v6}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 329
    new-instance v3, Lcom/perm/kate/MenuItemDetails;

    const v4, 0x7f07042d

    const/4 v5, 0x2

    invoke-direct {v3, v4, v5}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 330
    new-instance v3, Lcom/perm/kate/MenuItemDetails;

    const v4, 0x7f0700c4

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 331
    new-instance v3, Lcom/perm/kate/MenuItemDetails;

    const v4, 0x7f0701d5

    const/4 v5, 0x4

    invoke-direct {v3, v4, v5}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 332
    new-instance v3, Lcom/perm/kate/MenuItemDetails;

    const v4, 0x7f07030d

    const/4 v5, 0x5

    invoke-direct {v3, v4, v5}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 333
    new-instance v3, Lcom/perm/kate/MenuItemDetails;

    const v4, 0x7f07008e

    const/4 v5, 0x6

    invoke-direct {v3, v4, v5}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 334
    new-instance v3, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f070258

    invoke-virtual {v3, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v3

    .line 335
    invoke-static {v1}, Lcom/perm/kate/MenuItemDetails;->toArray(Ljava/util/ArrayList;)[Ljava/lang/CharSequence;

    move-result-object v4

    new-instance v5, Lcom/perm/kate/SearchActivity$5;

    invoke-direct {v5, p0, v1, p1}, Lcom/perm/kate/SearchActivity$5;-><init>(Lcom/perm/kate/SearchActivity;Ljava/util/ArrayList;Z)V

    invoke-virtual {v3, v4, v5}, Landroid/support/v7/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    .line 369
    .local v2, "winAlert":Landroid/support/v7/app/AlertDialog$Builder;
    invoke-virtual {v2}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 370
    .local v0, "dialog":Landroid/support/v7/app/AlertDialog;
    invoke-virtual {v0, v6}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 371
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 372
    return-void
.end method

.class Lcom/perm/kate/ProfileLeftFragment$2;
.super Ljava/lang/Thread;
.source "ProfileLeftFragment.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/ProfileLeftFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/ProfileLeftFragment;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/perm/kate/ProfileLeftFragment$2;->this$0:Lcom/perm/kate/ProfileLeftFragment;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 111
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 112
    iget-object v0, p0, Lcom/perm/kate/ProfileLeftFragment$2;->this$0:Lcom/perm/kate/ProfileLeftFragment;

    iget-object v0, v0, Lcom/perm/kate/ProfileLeftFragment;->uid:Ljava/lang/Long;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "uid,first_name,last_name,nickname,screen_name,sex,bdate,city,country,timezone,photo_50,photo_100,photo_200_orig,photo_200,photo_400_orig,has_mobile,education,online,activity,relation,last_seen,counters,is_favorite,can_write_private_message,verified,blacklisted_by_me,blacklisted"

    .line 114
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    const/4 v2, 0x0

    const-string v4, "nom"

    iget-object v5, p0, Lcom/perm/kate/ProfileLeftFragment$2;->this$0:Lcom/perm/kate/ProfileLeftFragment;

    invoke-static {v5}, Lcom/perm/kate/ProfileLeftFragment;->access$000(Lcom/perm/kate/ProfileLeftFragment;)Lcom/perm/kate/session/Callback;

    move-result-object v5

    iget-object v6, p0, Lcom/perm/kate/ProfileLeftFragment$2;->this$0:Lcom/perm/kate/ProfileLeftFragment;

    invoke-virtual {v6}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/perm/kate/session/Session;->getProfiles(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 115
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v1, p0, Lcom/perm/kate/ProfileLeftFragment$2;->this$0:Lcom/perm/kate/ProfileLeftFragment;

    iget-object v1, v1, Lcom/perm/kate/ProfileLeftFragment;->uid:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-object v3, p0, Lcom/perm/kate/ProfileLeftFragment$2;->this$0:Lcom/perm/kate/ProfileLeftFragment;

    invoke-static {v3}, Lcom/perm/kate/ProfileLeftFragment;->access$100(Lcom/perm/kate/ProfileLeftFragment;)Lcom/perm/kate/session/Callback;

    move-result-object v3

    iget-object v4, p0, Lcom/perm/kate/ProfileLeftFragment$2;->this$0:Lcom/perm/kate/ProfileLeftFragment;

    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/perm/kate/session/Session;->getWallNotesCount(JLcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 117
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 118
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

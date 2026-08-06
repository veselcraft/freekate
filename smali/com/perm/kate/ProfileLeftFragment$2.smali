.class Lcom/perm/kate/ProfileLeftFragment$2;
.super Ljava/lang/Thread;
.source "ProfileLeftFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/ProfileLeftFragment;->refreshInThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/ProfileLeftFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/ProfileLeftFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/ProfileLeftFragment;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/perm/kate/ProfileLeftFragment$2;->this$0:Lcom/perm/kate/ProfileLeftFragment;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 113
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 114
    .local v1, "user_id":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    iget-object v0, p0, Lcom/perm/kate/ProfileLeftFragment$2;->this$0:Lcom/perm/kate/ProfileLeftFragment;

    iget-object v0, v0, Lcom/perm/kate/ProfileLeftFragment;->uid:Ljava/lang/Long;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    const-string v3, "uid,first_name,last_name,nickname,screen_name,sex,bdate,city,country,timezone,photo_50,photo_100,photo_200_orig,photo_200,has_mobile,education,online,activity,relation,last_seen,counters,is_favorite,can_write_private_message,verified,blacklisted_by_me,blacklisted"

    .line 116
    .local v3, "fields":Ljava/lang/String;
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    const/4 v2, 0x0

    const-string v4, "nom"

    iget-object v5, p0, Lcom/perm/kate/ProfileLeftFragment$2;->this$0:Lcom/perm/kate/ProfileLeftFragment;

    invoke-static {v5}, Lcom/perm/kate/ProfileLeftFragment;->access$000(Lcom/perm/kate/ProfileLeftFragment;)Lcom/perm/kate/session/Callback;

    move-result-object v5

    iget-object v6, p0, Lcom/perm/kate/ProfileLeftFragment$2;->this$0:Lcom/perm/kate/ProfileLeftFragment;

    invoke-virtual {v6}, Lcom/perm/kate/ProfileLeftFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/perm/kate/session/Session;->getProfiles(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 117
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v2, p0, Lcom/perm/kate/ProfileLeftFragment$2;->this$0:Lcom/perm/kate/ProfileLeftFragment;

    iget-object v2, v2, Lcom/perm/kate/ProfileLeftFragment;->uid:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object v2, p0, Lcom/perm/kate/ProfileLeftFragment$2;->this$0:Lcom/perm/kate/ProfileLeftFragment;

    invoke-static {v2}, Lcom/perm/kate/ProfileLeftFragment;->access$100(Lcom/perm/kate/ProfileLeftFragment;)Lcom/perm/kate/session/Callback;

    move-result-object v2

    iget-object v6, p0, Lcom/perm/kate/ProfileLeftFragment$2;->this$0:Lcom/perm/kate/ProfileLeftFragment;

    invoke-virtual {v6}, Lcom/perm/kate/ProfileLeftFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-virtual {v0, v4, v5, v2, v6}, Lcom/perm/kate/session/Session;->getWallCount(JLcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    .end local v1    # "user_id":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v3    # "fields":Ljava/lang/String;
    :goto_0
    return-void

    .line 118
    :catch_0
    move-exception v7

    .line 119
    .local v7, "th":Ljava/lang/Throwable;
    invoke-static {v7}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 120
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

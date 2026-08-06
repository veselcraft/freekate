.class Lcom/perm/kate/ExtraProfileFragment$1;
.super Ljava/lang/Thread;
.source "ExtraProfileFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/ExtraProfileFragment;->refreshInThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/ExtraProfileFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/ExtraProfileFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/ExtraProfileFragment;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/perm/kate/ExtraProfileFragment$1;->this$0:Lcom/perm/kate/ExtraProfileFragment;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 137
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 138
    .local v1, "user_id":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    iget-object v0, p0, Lcom/perm/kate/ExtraProfileFragment$1;->this$0:Lcom/perm/kate/ExtraProfileFragment;

    invoke-static {v0}, Lcom/perm/kate/ExtraProfileFragment;->access$000(Lcom/perm/kate/ExtraProfileFragment;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    const-string v3, "activities,interests,music,movies,tv,books,games,quotes,about,relatives,connections,site,contacts"

    .line 140
    .local v3, "fields":Ljava/lang/String;
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    const/4 v2, 0x0

    const-string v4, "nom"

    iget-object v5, p0, Lcom/perm/kate/ExtraProfileFragment$1;->this$0:Lcom/perm/kate/ExtraProfileFragment;

    invoke-static {v5}, Lcom/perm/kate/ExtraProfileFragment;->access$100(Lcom/perm/kate/ExtraProfileFragment;)Lcom/perm/kate/session/Callback;

    move-result-object v5

    iget-object v6, p0, Lcom/perm/kate/ExtraProfileFragment$1;->this$0:Lcom/perm/kate/ExtraProfileFragment;

    invoke-virtual {v6}, Lcom/perm/kate/ExtraProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/perm/kate/session/Session;->getProfiles(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    .end local v1    # "user_id":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v3    # "fields":Ljava/lang/String;
    :goto_0
    return-void

    .line 141
    :catch_0
    move-exception v7

    .line 142
    .local v7, "th":Ljava/lang/Throwable;
    invoke-static {v7}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 143
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

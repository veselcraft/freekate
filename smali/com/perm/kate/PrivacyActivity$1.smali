.class Lcom/perm/kate/PrivacyActivity$1;
.super Ljava/lang/Thread;
.source "PrivacyActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/PrivacyActivity;->refreshInThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/PrivacyActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/PrivacyActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/PrivacyActivity;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/perm/kate/PrivacyActivity$1;->this$0:Lcom/perm/kate/PrivacyActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 42
    iget-object v0, p0, Lcom/perm/kate/PrivacyActivity$1;->this$0:Lcom/perm/kate/PrivacyActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/perm/kate/PrivacyActivity;->showProgressBar(Z)V

    .line 43
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v1, p0, Lcom/perm/kate/PrivacyActivity$1;->this$0:Lcom/perm/kate/PrivacyActivity;

    invoke-static {v1}, Lcom/perm/kate/PrivacyActivity;->access$000(Lcom/perm/kate/PrivacyActivity;)Lcom/perm/kate/session/Callback;

    move-result-object v1

    iget-object v2, p0, Lcom/perm/kate/PrivacyActivity$1;->this$0:Lcom/perm/kate/PrivacyActivity;

    invoke-virtual {v0, v1, v2}, Lcom/perm/kate/session/Session;->getPrivacySettings(Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 44
    return-void
.end method

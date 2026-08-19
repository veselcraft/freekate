.class Lcom/perm/kate/ChatInviteActivity$1;
.super Lcom/perm/kate/session/Callback;
.source "ChatInviteActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/ChatInviteActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/ChatInviteActivity;


# direct methods
.method public static synthetic $r8$lambda$x4oHEbjeX1V_sJGPtVX8xJWnwE0(Lcom/perm/kate/ChatInviteActivity$1;Lcom/perm/kate/api/ChatPreview;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/perm/kate/ChatInviteActivity$1;->lambda$ready$0(Lcom/perm/kate/api/ChatPreview;)V

    return-void
.end method

.method constructor <init>(Lcom/perm/kate/ChatInviteActivity;Landroid/app/Activity;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/perm/kate/ChatInviteActivity$1;->this$0:Lcom/perm/kate/ChatInviteActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method

.method private synthetic lambda$ready$0(Lcom/perm/kate/api/ChatPreview;)V
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/perm/kate/ChatInviteActivity$1;->this$0:Lcom/perm/kate/ChatInviteActivity;

    invoke-static {v0, p1}, Lcom/perm/kate/ChatInviteActivity;->access$100(Lcom/perm/kate/ChatInviteActivity;Lcom/perm/kate/api/ChatPreview;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 0

    .line 56
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 59
    iget-object p1, p0, Lcom/perm/kate/ChatInviteActivity$1;->this$0:Lcom/perm/kate/ChatInviteActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 2

    .line 42
    check-cast p1, Lcom/perm/kate/api/ChatPreview;

    .line 44
    iget-object v0, p1, Lcom/perm/kate/api/ChatPreview;->local_id:Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 46
    iget-object p1, p0, Lcom/perm/kate/ChatInviteActivity$1;->this$0:Lcom/perm/kate/ChatInviteActivity;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/perm/kate/ChatInviteActivity;->access$000(Lcom/perm/kate/ChatInviteActivity;J)V

    .line 47
    iget-object p1, p0, Lcom/perm/kate/ChatInviteActivity$1;->this$0:Lcom/perm/kate/ChatInviteActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/ChatInviteActivity$1;->this$0:Lcom/perm/kate/ChatInviteActivity;

    new-instance v1, Lcom/perm/kate/ChatInviteActivity$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/perm/kate/ChatInviteActivity$1$$ExternalSyntheticLambda0;-><init>(Lcom/perm/kate/ChatInviteActivity$1;Lcom/perm/kate/api/ChatPreview;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

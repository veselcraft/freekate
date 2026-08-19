.class Lcom/perm/kate/NewMessageActivity$3;
.super Lcom/perm/kate/session/Callback;
.source "NewMessageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/NewMessageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/NewMessageActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/NewMessageActivity;Landroid/app/Activity;)V
    .locals 0

    .line 310
    iput-object p1, p0, Lcom/perm/kate/NewMessageActivity$3;->this$0:Lcom/perm/kate/NewMessageActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public ready(Ljava/lang/Object;)V
    .locals 1

    .line 313
    iget-object p1, p0, Lcom/perm/kate/NewMessageActivity$3;->this$0:Lcom/perm/kate/NewMessageActivity;

    const v0, 0x7f0f00c9

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseActivity;->displayToast(I)V

    .line 316
    sget-object p1, Lcom/perm/kate/NewMessageActivity;->attachments:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 317
    sget-object p1, Lcom/perm/kate/NewMessageActivity;->attachments_objects:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 321
    iget-object p1, p0, Lcom/perm/kate/NewMessageActivity$3;->this$0:Lcom/perm/kate/NewMessageActivity;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setResult(I)V

    .line 322
    iget-object p1, p0, Lcom/perm/kate/NewMessageActivity$3;->this$0:Lcom/perm/kate/NewMessageActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method

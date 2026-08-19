.class Lcom/perm/kate/WallPostActivity$1;
.super Ljava/lang/Object;
.source "WallPostActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/WallPostActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/WallPostActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/WallPostActivity;)V
    .locals 0

    .line 206
    iput-object p1, p0, Lcom/perm/kate/WallPostActivity$1;->this$0:Lcom/perm/kate/WallPostActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 209
    iget-object p1, p0, Lcom/perm/kate/WallPostActivity$1;->this$0:Lcom/perm/kate/WallPostActivity;

    invoke-static {p1}, Lcom/perm/kate/WallPostActivity;->access$000(Lcom/perm/kate/WallPostActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    .line 210
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    sget-object v0, Lcom/perm/kate/WallPostActivity;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 211
    iget-object p1, p0, Lcom/perm/kate/WallPostActivity$1;->this$0:Lcom/perm/kate/WallPostActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f0f033c

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/WallPostActivity$1;->this$0:Lcom/perm/kate/WallPostActivity;

    invoke-static {v0, p1}, Lcom/perm/kate/WallPostActivity;->access$100(Lcom/perm/kate/WallPostActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 215
    iget-object v0, p0, Lcom/perm/kate/WallPostActivity$1;->this$0:Lcom/perm/kate/WallPostActivity;

    invoke-static {v0, v1}, Lcom/perm/kate/WallPostActivity;->access$200(Lcom/perm/kate/WallPostActivity;Z)V

    .line 216
    iget-object v0, p0, Lcom/perm/kate/WallPostActivity$1;->this$0:Lcom/perm/kate/WallPostActivity;

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 217
    new-instance v0, Lcom/perm/kate/WallPostActivity$1$1;

    invoke-direct {v0, p0, p1}, Lcom/perm/kate/WallPostActivity$1$1;-><init>(Lcom/perm/kate/WallPostActivity$1;Ljava/lang/String;)V

    .line 230
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

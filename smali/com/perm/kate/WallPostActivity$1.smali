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
    .param p1, "this$0"    # Lcom/perm/kate/WallPostActivity;

    .prologue
    .line 192
    iput-object p1, p0, Lcom/perm/kate/WallPostActivity$1;->this$0:Lcom/perm/kate/WallPostActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    .line 195
    iget-object v2, p0, Lcom/perm/kate/WallPostActivity$1;->this$0:Lcom/perm/kate/WallPostActivity;

    invoke-static {v2}, Lcom/perm/kate/WallPostActivity;->access$000(Lcom/perm/kate/WallPostActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 196
    .local v1, "text_tmp":Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/perm/kate/WallPostActivity;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 197
    iget-object v2, p0, Lcom/perm/kate/WallPostActivity$1;->this$0:Lcom/perm/kate/WallPostActivity;

    invoke-virtual {v2}, Lcom/perm/kate/WallPostActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0702df

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 215
    :goto_0
    return-void

    .line 200
    :cond_0
    iget-object v2, p0, Lcom/perm/kate/WallPostActivity$1;->this$0:Lcom/perm/kate/WallPostActivity;

    invoke-static {v2, v1}, Lcom/perm/kate/WallPostActivity;->access$100(Lcom/perm/kate/WallPostActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 201
    .local v0, "text":Ljava/lang/String;
    iget-object v2, p0, Lcom/perm/kate/WallPostActivity$1;->this$0:Lcom/perm/kate/WallPostActivity;

    invoke-static {v2, v4}, Lcom/perm/kate/WallPostActivity;->access$200(Lcom/perm/kate/WallPostActivity;Z)V

    .line 202
    iget-object v2, p0, Lcom/perm/kate/WallPostActivity$1;->this$0:Lcom/perm/kate/WallPostActivity;

    invoke-virtual {v2, v4}, Lcom/perm/kate/WallPostActivity;->showProgressBar(Z)V

    .line 203
    new-instance v2, Lcom/perm/kate/WallPostActivity$1$1;

    invoke-direct {v2, p0, v0}, Lcom/perm/kate/WallPostActivity$1$1;-><init>(Lcom/perm/kate/WallPostActivity$1;Ljava/lang/String;)V

    .line 214
    invoke-virtual {v2}, Lcom/perm/kate/WallPostActivity$1$1;->start()V

    goto :goto_0
.end method

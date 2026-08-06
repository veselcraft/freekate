.class Lcom/perm/kate/WallPostActivity$2$1;
.super Ljava/lang/Object;
.source "WallPostActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/WallPostActivity$2;->ready(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/perm/kate/WallPostActivity$2;


# direct methods
.method constructor <init>(Lcom/perm/kate/WallPostActivity$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/perm/kate/WallPostActivity$2;

    .prologue
    .line 223
    iput-object p1, p0, Lcom/perm/kate/WallPostActivity$2$1;->this$1:Lcom/perm/kate/WallPostActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 226
    iget-object v0, p0, Lcom/perm/kate/WallPostActivity$2$1;->this$1:Lcom/perm/kate/WallPostActivity$2;

    iget-object v0, v0, Lcom/perm/kate/WallPostActivity$2;->this$0:Lcom/perm/kate/WallPostActivity;

    invoke-static {v0}, Lcom/perm/kate/WallPostActivity;->access$300(Lcom/perm/kate/WallPostActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/perm/kate/WallPostActivity$2$1;->this$1:Lcom/perm/kate/WallPostActivity$2;

    iget-object v0, v0, Lcom/perm/kate/WallPostActivity$2;->this$0:Lcom/perm/kate/WallPostActivity;

    invoke-static {v0}, Lcom/perm/kate/WallPostActivity;->access$400(Lcom/perm/kate/WallPostActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/perm/kate/WallPostActivity$2$1;->this$1:Lcom/perm/kate/WallPostActivity$2;

    iget-object v0, v0, Lcom/perm/kate/WallPostActivity$2;->this$0:Lcom/perm/kate/WallPostActivity;

    invoke-virtual {v0}, Lcom/perm/kate/WallPostActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f070515

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 232
    :goto_0
    iget-object v0, p0, Lcom/perm/kate/WallPostActivity$2$1;->this$1:Lcom/perm/kate/WallPostActivity$2;

    iget-object v0, v0, Lcom/perm/kate/WallPostActivity$2;->this$0:Lcom/perm/kate/WallPostActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/perm/kate/WallPostActivity;->setResult(I)V

    .line 233
    iget-object v0, p0, Lcom/perm/kate/WallPostActivity$2$1;->this$1:Lcom/perm/kate/WallPostActivity$2;

    iget-object v0, v0, Lcom/perm/kate/WallPostActivity$2;->this$0:Lcom/perm/kate/WallPostActivity;

    invoke-virtual {v0}, Lcom/perm/kate/WallPostActivity;->finish()V

    .line 234
    sget-object v0, Lcom/perm/kate/WallPostActivity;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 235
    sget-object v0, Lcom/perm/kate/WallPostActivity;->attachments_objects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 236
    return-void

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/WallPostActivity$2$1;->this$1:Lcom/perm/kate/WallPostActivity$2;

    iget-object v0, v0, Lcom/perm/kate/WallPostActivity$2;->this$0:Lcom/perm/kate/WallPostActivity;

    invoke-static {v0}, Lcom/perm/kate/WallPostActivity;->access$1300(Lcom/perm/kate/WallPostActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 229
    iget-object v0, p0, Lcom/perm/kate/WallPostActivity$2$1;->this$1:Lcom/perm/kate/WallPostActivity$2;

    iget-object v0, v0, Lcom/perm/kate/WallPostActivity$2;->this$0:Lcom/perm/kate/WallPostActivity;

    invoke-virtual {v0}, Lcom/perm/kate/WallPostActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0704dc

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 231
    :cond_1
    iget-object v0, p0, Lcom/perm/kate/WallPostActivity$2$1;->this$1:Lcom/perm/kate/WallPostActivity$2;

    iget-object v0, v0, Lcom/perm/kate/WallPostActivity$2;->this$0:Lcom/perm/kate/WallPostActivity;

    invoke-virtual {v0}, Lcom/perm/kate/WallPostActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f070514

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

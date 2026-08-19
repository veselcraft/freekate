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

    .line 239
    iput-object p1, p0, Lcom/perm/kate/WallPostActivity$2$1;->this$1:Lcom/perm/kate/WallPostActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 242
    iget-object v0, p0, Lcom/perm/kate/WallPostActivity$2$1;->this$1:Lcom/perm/kate/WallPostActivity$2;

    iget-object v0, v0, Lcom/perm/kate/WallPostActivity$2;->this$0:Lcom/perm/kate/WallPostActivity;

    invoke-static {v0}, Lcom/perm/kate/WallPostActivity;->access$300(Lcom/perm/kate/WallPostActivity;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/perm/kate/WallPostActivity$2$1;->this$1:Lcom/perm/kate/WallPostActivity$2;

    iget-object v0, v0, Lcom/perm/kate/WallPostActivity$2;->this$0:Lcom/perm/kate/WallPostActivity;

    invoke-static {v0}, Lcom/perm/kate/WallPostActivity;->access$400(Lcom/perm/kate/WallPostActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/perm/kate/WallPostActivity$2$1;->this$1:Lcom/perm/kate/WallPostActivity$2;

    iget-object v0, v0, Lcom/perm/kate/WallPostActivity$2;->this$0:Lcom/perm/kate/WallPostActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f0f00c9

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/WallPostActivity$2$1;->this$1:Lcom/perm/kate/WallPostActivity$2;

    iget-object v0, v0, Lcom/perm/kate/WallPostActivity$2;->this$0:Lcom/perm/kate/WallPostActivity;

    invoke-static {v0}, Lcom/perm/kate/WallPostActivity;->access$1400(Lcom/perm/kate/WallPostActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 245
    iget-object v0, p0, Lcom/perm/kate/WallPostActivity$2$1;->this$1:Lcom/perm/kate/WallPostActivity$2;

    iget-object v0, v0, Lcom/perm/kate/WallPostActivity$2;->this$0:Lcom/perm/kate/WallPostActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f0f0560

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 247
    :cond_1
    iget-object v0, p0, Lcom/perm/kate/WallPostActivity$2$1;->this$1:Lcom/perm/kate/WallPostActivity$2;

    iget-object v0, v0, Lcom/perm/kate/WallPostActivity$2;->this$0:Lcom/perm/kate/WallPostActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f0f059f

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 248
    :goto_0
    iget-object v0, p0, Lcom/perm/kate/WallPostActivity$2$1;->this$1:Lcom/perm/kate/WallPostActivity$2;

    iget-object v0, v0, Lcom/perm/kate/WallPostActivity$2;->this$0:Lcom/perm/kate/WallPostActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 249
    iget-object v0, p0, Lcom/perm/kate/WallPostActivity$2$1;->this$1:Lcom/perm/kate/WallPostActivity$2;

    iget-object v0, v0, Lcom/perm/kate/WallPostActivity$2;->this$0:Lcom/perm/kate/WallPostActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 250
    sget-object v0, Lcom/perm/kate/WallPostActivity;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 251
    sget-object v0, Lcom/perm/kate/WallPostActivity;->attachments_objects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

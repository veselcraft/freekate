.class Lcom/perm/kate/VideoAlbumsActivity$10$1;
.super Ljava/lang/Object;
.source "VideoAlbumsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/VideoAlbumsActivity$10;->ready(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/perm/kate/VideoAlbumsActivity$10;

.field final synthetic val$albums:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/perm/kate/VideoAlbumsActivity$10;Ljava/util/ArrayList;)V
    .locals 0

    .line 254
    iput-object p1, p0, Lcom/perm/kate/VideoAlbumsActivity$10$1;->this$1:Lcom/perm/kate/VideoAlbumsActivity$10;

    iput-object p2, p0, Lcom/perm/kate/VideoAlbumsActivity$10$1;->val$albums:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 257
    iget-object v0, p0, Lcom/perm/kate/VideoAlbumsActivity$10$1;->this$1:Lcom/perm/kate/VideoAlbumsActivity$10;

    iget-object v0, v0, Lcom/perm/kate/VideoAlbumsActivity$10;->this$0:Lcom/perm/kate/VideoAlbumsActivity;

    invoke-static {v0}, Lcom/perm/kate/VideoAlbumsActivity;->access$000(Lcom/perm/kate/VideoAlbumsActivity;)Landroid/widget/EditText;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/VideoAlbumsActivity$10$1;->this$1:Lcom/perm/kate/VideoAlbumsActivity$10;

    iget-object v0, v0, Lcom/perm/kate/VideoAlbumsActivity$10;->this$0:Lcom/perm/kate/VideoAlbumsActivity;

    invoke-static {v0}, Lcom/perm/kate/VideoAlbumsActivity;->access$000(Lcom/perm/kate/VideoAlbumsActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/perm/kate/VideoAlbumsActivity;->access$400(Lcom/perm/kate/VideoAlbumsActivity;Ljava/lang/String;)V

    .line 261
    iget-object v0, p0, Lcom/perm/kate/VideoAlbumsActivity$10$1;->val$albums:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/perm/kate/VideoAlbumsActivity$10$1;->val$albums:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/perm/kate/VideoAlbumsActivity$10$1;->this$1:Lcom/perm/kate/VideoAlbumsActivity$10;

    iget-object v1, v1, Lcom/perm/kate/VideoAlbumsActivity$10;->this$0:Lcom/perm/kate/VideoAlbumsActivity;

    invoke-static {v1}, Lcom/perm/kate/VideoAlbumsActivity;->access$200(Lcom/perm/kate/VideoAlbumsActivity;)I

    move-result v1

    if-ge v0, v1, :cond_1

    goto :goto_0

    .line 264
    :cond_1
    iget-object v0, p0, Lcom/perm/kate/VideoAlbumsActivity$10$1;->this$1:Lcom/perm/kate/VideoAlbumsActivity$10;

    iget-object v0, v0, Lcom/perm/kate/VideoAlbumsActivity$10;->this$0:Lcom/perm/kate/VideoAlbumsActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/perm/kate/VideoAlbumsActivity;->access$502(Lcom/perm/kate/VideoAlbumsActivity;I)I

    goto :goto_1

    .line 262
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/perm/kate/VideoAlbumsActivity$10$1;->this$1:Lcom/perm/kate/VideoAlbumsActivity$10;

    iget-object v0, v0, Lcom/perm/kate/VideoAlbumsActivity$10;->this$0:Lcom/perm/kate/VideoAlbumsActivity;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/perm/kate/VideoAlbumsActivity;->access$502(Lcom/perm/kate/VideoAlbumsActivity;I)I

    :goto_1
    return-void
.end method

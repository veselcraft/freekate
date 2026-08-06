.class Lcom/perm/kate/NewMessageActivity$12;
.super Ljava/lang/Object;
.source "NewMessageActivity.java"

# interfaces
.implements Lcom/perm/kate/photoupload/PhotoChooser$Callback;


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
.method constructor <init>(Lcom/perm/kate/NewMessageActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/NewMessageActivity;

    .prologue
    .line 673
    iput-object p1, p0, Lcom/perm/kate/NewMessageActivity$12;->this$0:Lcom/perm/kate/NewMessageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canceled()V
    .locals 0

    .prologue
    .line 679
    return-void
.end method

.method public selected(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 676
    .local p1, "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    iget-object v0, p0, Lcom/perm/kate/NewMessageActivity$12;->this$0:Lcom/perm/kate/NewMessageActivity;

    invoke-static {v0, p1}, Lcom/perm/kate/NewMessageActivity;->access$2000(Lcom/perm/kate/NewMessageActivity;Ljava/util/ArrayList;)V

    .line 677
    return-void
.end method

.method public selectedFromAlbum(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 683
    .local p1, "selected_photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 684
    .local v0, "attachment":Ljava/lang/String;
    sget-object v2, Lcom/perm/kate/NewMessageActivity;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 685
    sget-object v2, Lcom/perm/kate/NewMessageActivity;->attachments_objects:Ljava/util/ArrayList;

    const-string v3, "photo"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 687
    .end local v0    # "attachment":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/perm/kate/NewMessageActivity$12;->this$0:Lcom/perm/kate/NewMessageActivity;

    invoke-virtual {v1}, Lcom/perm/kate/NewMessageActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0700e1

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 688
    return-void
.end method

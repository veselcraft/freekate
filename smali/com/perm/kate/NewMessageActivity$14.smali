.class Lcom/perm/kate/NewMessageActivity$14;
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

    .line 750
    iput-object p1, p0, Lcom/perm/kate/NewMessageActivity$14;->this$0:Lcom/perm/kate/NewMessageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canceled()V
    .locals 0

    return-void
.end method

.method public selected(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .line 753
    iget-object v0, p0, Lcom/perm/kate/NewMessageActivity$14;->this$0:Lcom/perm/kate/NewMessageActivity;

    invoke-static {v0, p1}, Lcom/perm/kate/NewMessageActivity;->access$2200(Lcom/perm/kate/NewMessageActivity;Ljava/util/ArrayList;)V

    return-void
.end method

.method public selectedFromAlbum(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 760
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 761
    sget-object v1, Lcom/perm/kate/NewMessageActivity;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 762
    sget-object v0, Lcom/perm/kate/NewMessageActivity;->attachments_objects:Ljava/util/ArrayList;

    const-string v1, "photo"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 764
    :cond_0
    iget-object p1, p0, Lcom/perm/kate/NewMessageActivity$14;->this$0:Lcom/perm/kate/NewMessageActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f0f012c

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

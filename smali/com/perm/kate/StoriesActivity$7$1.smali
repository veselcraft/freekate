.class Lcom/perm/kate/StoriesActivity$7$1;
.super Ljava/lang/Object;
.source "StoriesActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/StoriesActivity$7;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/perm/kate/StoriesActivity$7;

.field final synthetic val$menuItems:Ljava/util/ArrayList;

.field final synthetic val$photo:Lcom/perm/kate/api/Story;


# direct methods
.method constructor <init>(Lcom/perm/kate/StoriesActivity$7;Ljava/util/ArrayList;Lcom/perm/kate/api/Story;)V
    .locals 0

    .line 282
    iput-object p1, p0, Lcom/perm/kate/StoriesActivity$7$1;->this$1:Lcom/perm/kate/StoriesActivity$7;

    iput-object p2, p0, Lcom/perm/kate/StoriesActivity$7$1;->val$menuItems:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/perm/kate/StoriesActivity$7$1;->val$photo:Lcom/perm/kate/api/Story;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 285
    iget-object p1, p0, Lcom/perm/kate/StoriesActivity$7$1;->val$menuItems:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/MenuItemDetails;

    iget p1, p1, Lcom/perm/kate/MenuItemDetails;->code:I

    const/4 p2, 0x3

    if-eq p1, p2, :cond_2

    const/4 p2, 0x4

    if-eq p1, p2, :cond_1

    const/4 p2, 0x5

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 302
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "story"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/perm/kate/StoriesActivity$7$1;->val$photo:Lcom/perm/kate/api/Story;

    iget-wide v0, p2, Lcom/perm/kate/api/Story;->owner_id:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, "_"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/perm/kate/StoriesActivity$7$1;->val$photo:Lcom/perm/kate/api/Story;

    iget-wide v0, p2, Lcom/perm/kate/api/Story;->id:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 306
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    .line 307
    iget-object v0, p0, Lcom/perm/kate/StoriesActivity$7$1;->this$1:Lcom/perm/kate/StoriesActivity$7;

    iget-object v0, v0, Lcom/perm/kate/StoriesActivity$7;->this$0:Lcom/perm/kate/StoriesActivity;

    const-class v1, Lcom/perm/kate/MembersActivity;

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/4 v0, 0x0

    const-string v1, "com.perm.kate.only_members"

    .line 308
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v0, 0x1

    const-string v1, "com.perm.kate.new_message"

    .line 309
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "com.perm.kate.photo_attachment"

    .line 310
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 311
    iget-object p1, p0, Lcom/perm/kate/StoriesActivity$7$1;->this$1:Lcom/perm/kate/StoriesActivity$7;

    iget-object p1, p1, Lcom/perm/kate/StoriesActivity$7;->this$0:Lcom/perm/kate/StoriesActivity;

    invoke-virtual {p1, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 295
    :cond_1
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 296
    iget-object p2, p0, Lcom/perm/kate/StoriesActivity$7$1;->this$1:Lcom/perm/kate/StoriesActivity$7;

    iget-object p2, p2, Lcom/perm/kate/StoriesActivity$7;->this$0:Lcom/perm/kate/StoriesActivity;

    const-class v0, Lcom/perm/kate/LikesActivity;

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 297
    iget-object p2, p0, Lcom/perm/kate/StoriesActivity$7$1;->val$photo:Lcom/perm/kate/api/Story;

    iget-wide v0, p2, Lcom/perm/kate/api/Story;->id:J

    const-string p2, "story_id"

    invoke-virtual {p1, p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 298
    iget-object p2, p0, Lcom/perm/kate/StoriesActivity$7$1;->val$photo:Lcom/perm/kate/api/Story;

    iget-wide v0, p2, Lcom/perm/kate/api/Story;->owner_id:J

    const-string p2, "com.perm.kate.owner_id"

    invoke-virtual {p1, p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 299
    iget-object p2, p0, Lcom/perm/kate/StoriesActivity$7$1;->this$1:Lcom/perm/kate/StoriesActivity$7;

    iget-object p2, p2, Lcom/perm/kate/StoriesActivity$7;->this$0:Lcom/perm/kate/StoriesActivity;

    invoke-virtual {p2, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 287
    :cond_2
    new-instance p1, Lcom/perm/kate/StoriesActivity$7$1$1;

    invoke-direct {p1, p0}, Lcom/perm/kate/StoriesActivity$7$1$1;-><init>(Lcom/perm/kate/StoriesActivity$7$1;)V

    .line 292
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :goto_0
    return-void
.end method

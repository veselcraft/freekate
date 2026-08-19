.class Lcom/perm/kate/DialogAttachmentsFragment$9;
.super Ljava/lang/Object;
.source "DialogAttachmentsFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/DialogAttachmentsFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/DialogAttachmentsFragment;)V
    .locals 0

    .line 459
    iput-object p1, p0, Lcom/perm/kate/DialogAttachmentsFragment$9;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 10

    .line 462
    iget-object p1, p0, Lcom/perm/kate/DialogAttachmentsFragment$9;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    iget-boolean p1, p1, Lcom/perm/kate/DialogAttachmentsFragment;->isGrid:Z

    if-eqz p1, :cond_2

    .line 465
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 466
    iget-object p2, p0, Lcom/perm/kate/DialogAttachmentsFragment$9;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const-class p4, Lcom/perm/kate/PhotoViewerActrivity;

    invoke-virtual {p1, p2, p4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    add-int/lit8 p2, p3, -0x64

    add-int/lit8 p4, p3, 0x64

    if-gez p2, :cond_0

    const/4 p2, 0x0

    .line 472
    :cond_0
    iget-object p5, p0, Lcom/perm/kate/DialogAttachmentsFragment$9;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    iget-object p5, p5, Lcom/perm/kate/DialogAttachmentsFragment;->photo_list_adapter:Lcom/perm/kate/PhotoListAdapter;

    iget-object p5, p5, Lcom/perm/kate/PhotoListAdapter;->photos:Ljava/util/ArrayList;

    invoke-virtual {p5}, Ljava/util/ArrayList;->size()I

    move-result p5

    if-le p4, p5, :cond_1

    .line 473
    iget-object p4, p0, Lcom/perm/kate/DialogAttachmentsFragment$9;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    iget-object p4, p4, Lcom/perm/kate/DialogAttachmentsFragment;->photo_list_adapter:Lcom/perm/kate/PhotoListAdapter;

    iget-object p4, p4, Lcom/perm/kate/PhotoListAdapter;->photos:Ljava/util/ArrayList;

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p4

    .line 474
    :cond_1
    new-instance p5, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/perm/kate/DialogAttachmentsFragment$9;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    iget-object v0, v0, Lcom/perm/kate/DialogAttachmentsFragment;->photo_list_adapter:Lcom/perm/kate/PhotoListAdapter;

    iget-object v0, v0, Lcom/perm/kate/PhotoListAdapter;->photos:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p4}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object p4

    invoke-direct {p5, p4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string p4, "com.perm.kate.photos"

    .line 476
    invoke-virtual {p1, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    sub-int/2addr p3, p2

    const-string p4, "com.perm.kate.position"

    .line 477
    invoke-virtual {p1, p4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p3, "com.perm.kate.info_position_offset"

    .line 478
    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 479
    iget-object p2, p0, Lcom/perm/kate/DialogAttachmentsFragment$9;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    iget-object p2, p2, Lcom/perm/kate/DialogAttachmentsFragment;->photo_list_adapter:Lcom/perm/kate/PhotoListAdapter;

    iget-object p2, p2, Lcom/perm/kate/PhotoListAdapter;->photos:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    const-string p3, "com.perm.kate.info_total_count"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 481
    iget-object p2, p0, Lcom/perm/kate/DialogAttachmentsFragment$9;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    invoke-virtual {p2, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void

    .line 485
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    if-nez p1, :cond_3

    return-void

    .line 488
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const p1, 0x7f09038f

    .line 489
    invoke-virtual {p2, p1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Ljava/lang/String;

    const p1, 0x7f09038e

    .line 490
    invoke-virtual {p2, p1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Ljava/lang/String;

    const p1, 0x7f09013d

    .line 491
    invoke-virtual {p2, p1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Ljava/lang/Boolean;

    const p1, 0x7f090016

    .line 492
    invoke-virtual {p2, p1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    move-object v6, p1

    check-cast v6, Ljava/lang/Boolean;

    const p1, 0x7f090049

    .line 493
    invoke-virtual {p2, p1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    move-object v7, p1

    check-cast v7, Ljava/lang/String;

    const p1, 0x7f09019e

    .line 494
    invoke-virtual {p2, p1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    move-object v9, p1

    check-cast v9, Lcom/perm/kate/api/Message;

    .line 495
    iget-object p1, p0, Lcom/perm/kate/DialogAttachmentsFragment$9;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    invoke-static {p1}, Lcom/perm/kate/DialogAttachmentsFragment;->access$000(Lcom/perm/kate/DialogAttachmentsFragment;)Z

    move-result p1

    if-eqz p1, :cond_4

    if-eqz v4, :cond_4

    .line 496
    iget-object p1, p0, Lcom/perm/kate/DialogAttachmentsFragment$9;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p2

    invoke-static {p1, p2, p3}, Lcom/perm/kate/DialogAttachmentsFragment;->access$1900(Lcom/perm/kate/DialogAttachmentsFragment;J)V

    goto :goto_0

    .line 498
    :cond_4
    iget-object v0, p0, Lcom/perm/kate/DialogAttachmentsFragment$9;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    move v8, p3

    invoke-static/range {v0 .. v9}, Lcom/perm/kate/DialogAttachmentsFragment;->access$2000(Lcom/perm/kate/DialogAttachmentsFragment;JLjava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;ILcom/perm/kate/api/Message;)V

    :goto_0
    return-void
.end method

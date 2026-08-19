.class Lcom/perm/kate/MessagesFragment$13;
.super Ljava/lang/Object;
.source "MessagesFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/MessagesFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/MessagesFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/MessagesFragment;)V
    .locals 0

    .line 555
    iput-object p1, p0, Lcom/perm/kate/MessagesFragment$13;->this$0:Lcom/perm/kate/MessagesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .line 558
    iget-object p1, p0, Lcom/perm/kate/MessagesFragment$13;->this$0:Lcom/perm/kate/MessagesFragment;

    invoke-static {p1}, Lcom/perm/kate/MessagesFragment;->access$1000(Lcom/perm/kate/MessagesFragment;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 560
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const p1, 0x7f09005d

    .line 561
    invoke-virtual {p2, p1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 562
    invoke-static {v7, v8}, Lcom/perm/kate/ThreadIdHelper;->getChatId(J)J

    move-result-wide v5

    .line 563
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 565
    new-instance p1, Lcom/perm/kate/MenuItemDetails;

    const p2, 0x7f0f0036

    const/4 p3, 0x2

    invoke-direct {p1, p2, p3}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 566
    new-instance p1, Lcom/perm/kate/MenuItemDetails;

    const p2, 0x7f0f00be

    const/4 p3, 0x1

    invoke-direct {p1, p2, p3}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 567
    iget-object p1, p0, Lcom/perm/kate/MessagesFragment$13;->this$0:Lcom/perm/kate/MessagesFragment;

    iget-wide p1, p1, Lcom/perm/kate/MessagesFragment;->group_id:J

    const-wide/16 p4, 0x0

    cmp-long v0, p1, p4

    if-nez v0, :cond_2

    .line 568
    invoke-static {v7, v8}, Lcom/perm/kate/HiddenChats;->isHidden(J)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 569
    new-instance p1, Lcom/perm/kate/MenuItemDetails;

    const p2, 0x7f0f0571

    const/4 p4, 0x4

    invoke-direct {p1, p2, p4}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 571
    :cond_1
    new-instance p1, Lcom/perm/kate/MenuItemDetails;

    const p2, 0x7f0f0113

    const/4 p4, 0x3

    invoke-direct {p1, p2, p4}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 573
    :cond_2
    :goto_0
    invoke-static {v7, v8}, Lcom/perm/utils/FixedChats;->isFixed(J)Z

    move-result p1

    if-nez p1, :cond_3

    .line 574
    new-instance p1, Lcom/perm/kate/MenuItemDetails;

    const p2, 0x7f0f026e

    const/4 p4, 0x5

    invoke-direct {p1, p2, p4}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 576
    :cond_3
    new-instance p1, Lcom/perm/kate/MenuItemDetails;

    const p2, 0x7f0f02ef

    const/4 p4, 0x6

    invoke-direct {p1, p2, p4}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 577
    :goto_1
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object p2, p0, Lcom/perm/kate/MessagesFragment$13;->this$0:Lcom/perm/kate/MessagesFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-direct {p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 578
    invoke-static {v2}, Lcom/perm/kate/MenuItemDetails;->toArray(Ljava/util/ArrayList;)[Ljava/lang/CharSequence;

    move-result-object p2

    new-instance p4, Lcom/perm/kate/MessagesFragment$13$1;

    move-object v0, p4

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/perm/kate/MessagesFragment$13$1;-><init>(Lcom/perm/kate/MessagesFragment$13;Ljava/util/ArrayList;JJJ)V

    invoke-virtual {p1, p2, p4}, Landroidx/appcompat/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 618
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 619
    invoke-virtual {p1, p3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 620
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return p3
.end method

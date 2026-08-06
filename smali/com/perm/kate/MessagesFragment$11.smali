.class Lcom/perm/kate/MessagesFragment$11;
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
    .param p1, "this$0"    # Lcom/perm/kate/MessagesFragment;

    .prologue
    .line 437
    iput-object p1, p0, Lcom/perm/kate/MessagesFragment$11;->this$0:Lcom/perm/kate/MessagesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 18
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 440
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/perm/kate/MessagesFragment$11;->this$0:Lcom/perm/kate/MessagesFragment;

    invoke-static {v3}, Lcom/perm/kate/MessagesFragment;->access$900(Lcom/perm/kate/MessagesFragment;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 441
    const/4 v3, 0x0

    .line 491
    :goto_0
    return v3

    .line 442
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 443
    .local v6, "message_uid":J
    const v3, 0x7f0e0069

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 444
    .local v10, "thread_id":J
    invoke-static {v10, v11}, Lcom/perm/kate/ThreadIdHelper;->getChatId(J)J

    move-result-wide v8

    .line 445
    .local v8, "chat_id":J
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 447
    .local v5, "menuItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/MenuItemDetails;>;"
    new-instance v3, Lcom/perm/kate/MenuItemDetails;

    const v4, 0x7f070020

    const/4 v13, 0x2

    invoke-direct {v3, v4, v13}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 448
    new-instance v3, Lcom/perm/kate/MenuItemDetails;

    const v4, 0x7f070087

    const/4 v13, 0x1

    invoke-direct {v3, v4, v13}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 449
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/perm/kate/MessagesFragment$11;->this$0:Lcom/perm/kate/MessagesFragment;

    iget-wide v14, v3, Lcom/perm/kate/MessagesFragment;->group_id:J

    const-wide/16 v16, 0x0

    cmp-long v3, v14, v16

    if-nez v3, :cond_1

    .line 450
    invoke-static {v10, v11}, Lcom/perm/kate/HiddenChats;->isHidden(J)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 451
    new-instance v3, Lcom/perm/kate/MenuItemDetails;

    const v4, 0x7f0704ee

    const/4 v13, 0x4

    invoke-direct {v3, v4, v13}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 455
    :cond_1
    :goto_1
    new-instance v13, Landroid/support/v7/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/perm/kate/MessagesFragment$11;->this$0:Lcom/perm/kate/MessagesFragment;

    invoke-virtual {v3}, Lcom/perm/kate/MessagesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v13, v3}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 456
    invoke-static {v5}, Lcom/perm/kate/MenuItemDetails;->toArray(Ljava/util/ArrayList;)[Ljava/lang/CharSequence;

    move-result-object v14

    new-instance v3, Lcom/perm/kate/MessagesFragment$11$1;

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v11}, Lcom/perm/kate/MessagesFragment$11$1;-><init>(Lcom/perm/kate/MessagesFragment$11;Ljava/util/ArrayList;JJJ)V

    invoke-virtual {v13, v14, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v12

    .line 488
    .local v12, "winAlert":Landroid/support/v7/app/AlertDialog$Builder;
    invoke-virtual {v12}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v2

    .line 489
    .local v2, "dialog":Landroid/support/v7/app/AlertDialog;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 490
    invoke-virtual {v2}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 491
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 453
    .end local v2    # "dialog":Landroid/support/v7/app/AlertDialog;
    .end local v12    # "winAlert":Landroid/support/v7/app/AlertDialog$Builder;
    :cond_2
    new-instance v3, Lcom/perm/kate/MenuItemDetails;

    const v4, 0x7f0700c9

    const/4 v13, 0x3

    invoke-direct {v3, v4, v13}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

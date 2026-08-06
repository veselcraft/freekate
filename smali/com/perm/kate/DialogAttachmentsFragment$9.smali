.class Lcom/perm/kate/DialogAttachmentsFragment$9;
.super Ljava/lang/Object;
.source "DialogAttachmentsFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/DialogAttachmentsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/DialogAttachmentsFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/DialogAttachmentsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/DialogAttachmentsFragment;

    .prologue
    .line 390
    iput-object p1, p0, Lcom/perm/kate/DialogAttachmentsFragment$9;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 16
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 393
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 394
    .local v2, "uid":Ljava/lang/Long;
    if-nez v2, :cond_0

    .line 407
    :goto_0
    return-void

    .line 396
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 397
    .local v4, "message_uid":J
    const v3, 0x7f0e011a

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 398
    .local v6, "user_name":Ljava/lang/String;
    const v3, 0x7f0e011f

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 399
    .local v7, "mid":Ljava/lang/String;
    const v3, 0x7f0e01fe

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    .line 400
    .local v8, "read_state":Ljava/lang/Boolean;
    const v3, 0x7f0e021a

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    .line 401
    .local v9, "is_out":Ljava/lang/Boolean;
    const v3, 0x7f0e01d2

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 402
    .local v10, "text":Ljava/lang/String;
    const v3, 0x7f0e028f

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/perm/kate/api/Message;

    .line 403
    .local v12, "message":Lcom/perm/kate/api/Message;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/perm/kate/DialogAttachmentsFragment$9;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    invoke-static {v3}, Lcom/perm/kate/DialogAttachmentsFragment;->access$000(Lcom/perm/kate/DialogAttachmentsFragment;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v7, :cond_1

    .line 404
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/perm/kate/DialogAttachmentsFragment$9;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    invoke-static {v3, v14, v15}, Lcom/perm/kate/DialogAttachmentsFragment;->access$1800(Lcom/perm/kate/DialogAttachmentsFragment;J)V

    goto :goto_0

    .line 406
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/perm/kate/DialogAttachmentsFragment$9;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    move/from16 v11, p3

    invoke-static/range {v3 .. v12}, Lcom/perm/kate/DialogAttachmentsFragment;->access$1900(Lcom/perm/kate/DialogAttachmentsFragment;JLjava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;ILcom/perm/kate/api/Message;)V

    goto :goto_0
.end method

.class Lcom/perm/kate/DocClickHelper$1;
.super Ljava/lang/Object;
.source "DocClickHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/DocClickHelper;

.field final synthetic val$access_key:Ljava/lang/String;

.field final synthetic val$doc_id:J

.field final synthetic val$ext:Ljava/lang/String;

.field final synthetic val$menuItems:Ljava/util/ArrayList;

.field final synthetic val$owner_id:J

.field final synthetic val$preview:Ljava/lang/String;

.field final synthetic val$title:Ljava/lang/String;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$0HU-OSN5GRzFGloeKE-ZYkK_PeE(Lcom/perm/kate/DocClickHelper$1;JJLandroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/perm/kate/DocClickHelper$1;->lambda$onClick$0(JJLandroid/content/DialogInterface;I)V

    return-void
.end method

.method constructor <init>(Lcom/perm/kate/DocClickHelper;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/perm/kate/DocClickHelper$1;->this$0:Lcom/perm/kate/DocClickHelper;

    iput-object p2, p0, Lcom/perm/kate/DocClickHelper$1;->val$menuItems:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/perm/kate/DocClickHelper$1;->val$url:Ljava/lang/String;

    iput-object p4, p0, Lcom/perm/kate/DocClickHelper$1;->val$title:Ljava/lang/String;

    iput-object p5, p0, Lcom/perm/kate/DocClickHelper$1;->val$ext:Ljava/lang/String;

    iput-wide p6, p0, Lcom/perm/kate/DocClickHelper$1;->val$doc_id:J

    iput-wide p8, p0, Lcom/perm/kate/DocClickHelper$1;->val$owner_id:J

    iput-object p10, p0, Lcom/perm/kate/DocClickHelper$1;->val$access_key:Ljava/lang/String;

    iput-object p11, p0, Lcom/perm/kate/DocClickHelper$1;->val$preview:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onClick$0(JJLandroid/content/DialogInterface;I)V
    .locals 0

    .line 74
    iget-object p5, p0, Lcom/perm/kate/DocClickHelper$1;->this$0:Lcom/perm/kate/DocClickHelper;

    invoke-static {p5, p1, p2, p3, p4}, Lcom/perm/kate/DocClickHelper;->access$400(Lcom/perm/kate/DocClickHelper;JJ)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 12

    .line 60
    iget-object p1, p0, Lcom/perm/kate/DocClickHelper$1;->val$menuItems:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/MenuItemDetails;

    iget p1, p1, Lcom/perm/kate/MenuItemDetails;->code:I

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 85
    :pswitch_0
    iget-wide v0, p0, Lcom/perm/kate/DocClickHelper$1;->val$owner_id:J

    iget-wide v2, p0, Lcom/perm/kate/DocClickHelper$1;->val$doc_id:J

    iget-object v4, p0, Lcom/perm/kate/DocClickHelper$1;->val$access_key:Ljava/lang/String;

    iget-object p1, p0, Lcom/perm/kate/DocClickHelper$1;->this$0:Lcom/perm/kate/DocClickHelper;

    invoke-static {p1}, Lcom/perm/kate/DocClickHelper;->access$100(Lcom/perm/kate/DocClickHelper;)Lcom/perm/kate/BaseActivity;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/perm/kate/GifViewActivity;->sendToFriend(JJLjava/lang/String;Lcom/perm/kate/BaseActivity;)V

    goto/16 :goto_0

    .line 82
    :pswitch_1
    iget-object v6, p0, Lcom/perm/kate/DocClickHelper$1;->this$0:Lcom/perm/kate/DocClickHelper;

    iget-wide v7, p0, Lcom/perm/kate/DocClickHelper$1;->val$doc_id:J

    iget-wide v9, p0, Lcom/perm/kate/DocClickHelper$1;->val$owner_id:J

    iget-object v11, p0, Lcom/perm/kate/DocClickHelper$1;->val$title:Ljava/lang/String;

    invoke-static/range {v6 .. v11}, Lcom/perm/kate/DocClickHelper;->access$300(Lcom/perm/kate/DocClickHelper;JJLjava/lang/String;)V

    goto/16 :goto_0

    .line 79
    :pswitch_2
    iget-wide v0, p0, Lcom/perm/kate/DocClickHelper$1;->val$owner_id:J

    iget-wide v2, p0, Lcom/perm/kate/DocClickHelper$1;->val$doc_id:J

    iget-object v4, p0, Lcom/perm/kate/DocClickHelper$1;->val$access_key:Ljava/lang/String;

    iget-object p1, p0, Lcom/perm/kate/DocClickHelper$1;->this$0:Lcom/perm/kate/DocClickHelper;

    invoke-static {p1}, Lcom/perm/kate/DocClickHelper;->access$100(Lcom/perm/kate/DocClickHelper;)Lcom/perm/kate/BaseActivity;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/perm/kate/GifViewActivity;->addToMyDocs(JJLjava/lang/String;Lcom/perm/kate/BaseActivity;)V

    goto/16 :goto_0

    .line 68
    :pswitch_3
    iget-wide p1, p0, Lcom/perm/kate/DocClickHelper$1;->val$owner_id:J

    iget-wide v0, p0, Lcom/perm/kate/DocClickHelper$1;->val$doc_id:J

    iget-object v2, p0, Lcom/perm/kate/DocClickHelper$1;->this$0:Lcom/perm/kate/DocClickHelper;

    invoke-static {v2}, Lcom/perm/kate/DocClickHelper;->access$100(Lcom/perm/kate/DocClickHelper;)Lcom/perm/kate/BaseActivity;

    move-result-object v2

    invoke-static {p1, p2, v0, v1, v2}, Lcom/perm/kate/Helper;->copyDocLink(JJLandroid/content/Context;)V

    goto :goto_0

    .line 71
    :pswitch_4
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object p2, p0, Lcom/perm/kate/DocClickHelper$1;->this$0:Lcom/perm/kate/DocClickHelper;

    invoke-static {p2}, Lcom/perm/kate/DocClickHelper;->access$100(Lcom/perm/kate/DocClickHelper;)Lcom/perm/kate/BaseActivity;

    move-result-object p2

    invoke-direct {p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const p2, 0x7f0f03ef

    .line 72
    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x7f0f00ba

    .line 73
    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x7f0f05a7

    iget-wide v2, p0, Lcom/perm/kate/DocClickHelper$1;->val$doc_id:J

    iget-wide v4, p0, Lcom/perm/kate/DocClickHelper$1;->val$owner_id:J

    new-instance v6, Lcom/perm/kate/DocClickHelper$1$$ExternalSyntheticLambda0;

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/perm/kate/DocClickHelper$1$$ExternalSyntheticLambda0;-><init>(Lcom/perm/kate/DocClickHelper$1;JJ)V

    .line 74
    invoke-virtual {p1, p2, v6}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x7f0f037a

    const/4 v0, 0x0

    .line 75
    invoke-virtual {p1, p2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 76
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 65
    :pswitch_5
    iget-object v0, p0, Lcom/perm/kate/DocClickHelper$1;->this$0:Lcom/perm/kate/DocClickHelper;

    iget-object v1, p0, Lcom/perm/kate/DocClickHelper$1;->val$url:Ljava/lang/String;

    iget-object v2, p0, Lcom/perm/kate/DocClickHelper$1;->val$title:Ljava/lang/String;

    iget-object v3, p0, Lcom/perm/kate/DocClickHelper$1;->val$ext:Ljava/lang/String;

    const/4 v4, 0x0

    iget-wide v5, p0, Lcom/perm/kate/DocClickHelper$1;->val$doc_id:J

    iget-wide v7, p0, Lcom/perm/kate/DocClickHelper$1;->val$owner_id:J

    iget-object v9, p0, Lcom/perm/kate/DocClickHelper$1;->val$access_key:Ljava/lang/String;

    iget-object v10, p0, Lcom/perm/kate/DocClickHelper$1;->val$preview:Ljava/lang/String;

    invoke-static/range {v0 .. v10}, Lcom/perm/kate/DocClickHelper;->access$200(Lcom/perm/kate/DocClickHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJJLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 62
    :pswitch_6
    new-instance p1, Lcom/perm/utils/DownloadManagerHelper;

    invoke-direct {p1}, Lcom/perm/utils/DownloadManagerHelper;-><init>()V

    iget-object p2, p0, Lcom/perm/kate/DocClickHelper$1;->val$url:Ljava/lang/String;

    iget-object v0, p0, Lcom/perm/kate/DocClickHelper$1;->this$0:Lcom/perm/kate/DocClickHelper;

    iget-object v1, p0, Lcom/perm/kate/DocClickHelper$1;->val$title:Ljava/lang/String;

    iget-object v2, p0, Lcom/perm/kate/DocClickHelper$1;->val$ext:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/perm/kate/DocClickHelper;->access$000(Lcom/perm/kate/DocClickHelper;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/perm/kate/DocClickHelper$1;->val$ext:Ljava/lang/String;

    iget-object v2, p0, Lcom/perm/kate/DocClickHelper$1;->this$0:Lcom/perm/kate/DocClickHelper;

    invoke-static {v2}, Lcom/perm/kate/DocClickHelper;->access$100(Lcom/perm/kate/DocClickHelper;)Lcom/perm/kate/BaseActivity;

    move-result-object v2

    invoke-virtual {p1, p2, v0, v1, v2}, Lcom/perm/utils/DownloadManagerHelper;->downloadDoc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.class Lcom/perm/kate/RequestsToGroupActivity$5;
.super Ljava/lang/Object;
.source "RequestsToGroupActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/RequestsToGroupActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/RequestsToGroupActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/RequestsToGroupActivity;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/perm/kate/RequestsToGroupActivity$5;->this$0:Lcom/perm/kate/RequestsToGroupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .line 133
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/api/User;

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return p2

    .line 136
    :cond_0
    sget-object p3, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {p3, p1, p2}, Lcom/perm/kate/db/DataHelper;->createOrUpdateUser(Lcom/perm/kate/api/User;Z)V

    .line 137
    iget-wide p1, p1, Lcom/perm/kate/api/User;->uid:J

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    .line 138
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 139
    new-instance p3, Lcom/perm/kate/MenuItemDetails;

    const p4, 0x7f0f029f

    const/4 p5, 0x1

    invoke-direct {p3, p4, p5}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    new-instance p3, Lcom/perm/kate/MenuItemDetails;

    const p4, 0x7f0f0232

    const/4 v0, 0x2

    invoke-direct {p3, p4, v0}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    new-instance p3, Lcom/perm/kate/MenuItemDetails;

    const p4, 0x7f0f02f2

    const/4 v0, 0x3

    invoke-direct {p3, p4, v0}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    new-instance p3, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object p4, p0, Lcom/perm/kate/RequestsToGroupActivity$5;->this$0:Lcom/perm/kate/RequestsToGroupActivity;

    invoke-static {p4}, Lcom/perm/kate/Helper;->getBaseActivity(Landroid/app/Activity;)Landroid/app/Activity;

    move-result-object p4

    invoke-direct {p3, p4}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 143
    invoke-static {p2}, Lcom/perm/kate/MenuItemDetails;->toArray(Ljava/util/ArrayList;)[Ljava/lang/CharSequence;

    move-result-object p4

    new-instance v0, Lcom/perm/kate/RequestsToGroupActivity$5$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/perm/kate/RequestsToGroupActivity$5$1;-><init>(Lcom/perm/kate/RequestsToGroupActivity$5;Ljava/util/ArrayList;Ljava/lang/String;)V

    invoke-virtual {p3, p4, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 159
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 160
    invoke-virtual {p1, p5}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 161
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return p5
.end method

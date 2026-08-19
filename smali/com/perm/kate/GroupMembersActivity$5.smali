.class Lcom/perm/kate/GroupMembersActivity$5;
.super Ljava/lang/Object;
.source "GroupMembersActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/GroupMembersActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/GroupMembersActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/GroupMembersActivity;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lcom/perm/kate/GroupMembersActivity$5;->this$0:Lcom/perm/kate/GroupMembersActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .line 159
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/api/User;

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return p2

    .line 162
    :cond_0
    sget-object p3, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {p3, p1, p2}, Lcom/perm/kate/db/DataHelper;->createOrUpdateUser(Lcom/perm/kate/api/User;Z)V

    .line 163
    iget-wide p1, p1, Lcom/perm/kate/api/User;->uid:J

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    .line 164
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 165
    new-instance p3, Lcom/perm/kate/MenuItemDetails;

    const p4, 0x7f0f029f

    const/4 p5, 0x1

    invoke-direct {p3, p4, p5}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    new-instance p3, Lcom/perm/kate/MenuItemDetails;

    const p4, 0x7f0f0232

    const/4 v0, 0x2

    invoke-direct {p3, p4, v0}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    sget-object p3, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {p3}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p3

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    .line 168
    sget-object p4, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v0, p0, Lcom/perm/kate/GroupMembersActivity$5;->this$0:Lcom/perm/kate/GroupMembersActivity;

    invoke-static {v0}, Lcom/perm/kate/GroupMembersActivity;->access$000(Lcom/perm/kate/GroupMembersActivity;)J

    move-result-wide v0

    invoke-virtual {p4, p3, v0, v1}, Lcom/perm/kate/db/DataHelper;->isModerInGroup(Ljava/lang/Long;J)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 169
    new-instance p3, Lcom/perm/kate/MenuItemDetails;

    const p4, 0x7f0f02f2

    const/4 v0, 0x3

    invoke-direct {p3, p4, v0}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    new-instance p3, Lcom/perm/kate/MenuItemDetails;

    const p4, 0x7f0f042c

    const/4 v0, 0x4

    invoke-direct {p3, p4, v0}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    :cond_1
    new-instance p3, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object p4, p0, Lcom/perm/kate/GroupMembersActivity$5;->this$0:Lcom/perm/kate/GroupMembersActivity;

    invoke-static {p4}, Lcom/perm/kate/Helper;->getBaseActivity(Landroid/app/Activity;)Landroid/app/Activity;

    move-result-object p4

    invoke-direct {p3, p4}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 174
    invoke-static {p2}, Lcom/perm/kate/MenuItemDetails;->toArray(Ljava/util/ArrayList;)[Ljava/lang/CharSequence;

    move-result-object p4

    new-instance v0, Lcom/perm/kate/GroupMembersActivity$5$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/perm/kate/GroupMembersActivity$5$1;-><init>(Lcom/perm/kate/GroupMembersActivity$5;Ljava/util/ArrayList;Ljava/lang/String;)V

    invoke-virtual {p3, p4, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 194
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 195
    invoke-virtual {p1, p5}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 196
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return p5
.end method

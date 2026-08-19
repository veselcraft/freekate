.class Lcom/perm/kate/GroupManagementActivity$4;
.super Ljava/lang/Object;
.source "GroupManagementActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/GroupManagementActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/GroupManagementActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/GroupManagementActivity;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/perm/kate/GroupManagementActivity$4;->this$0:Lcom/perm/kate/GroupManagementActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 121
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/api/User;

    if-nez p1, :cond_0

    return-void

    .line 124
    :cond_0
    iget-object p2, p1, Lcom/perm/kate/api/User;->role:Ljava/lang/String;

    if-eqz p2, :cond_1

    const-string p3, "add"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 125
    iget-object p1, p0, Lcom/perm/kate/GroupManagementActivity$4;->this$0:Lcom/perm/kate/GroupManagementActivity;

    invoke-static {p1}, Lcom/perm/kate/GroupManagementActivity;->access$600(Lcom/perm/kate/GroupManagementActivity;)V

    return-void

    .line 128
    :cond_1
    sget-object p2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    const/4 p3, 0x0

    invoke-virtual {p2, p1, p3}, Lcom/perm/kate/db/DataHelper;->createOrUpdateUser(Lcom/perm/kate/api/User;Z)V

    .line 129
    iget-wide p2, p1, Lcom/perm/kate/api/User;->uid:J

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    .line 130
    iget-object p3, p1, Lcom/perm/kate/api/User;->role:Ljava/lang/String;

    .line 131
    iget-object p4, p0, Lcom/perm/kate/GroupManagementActivity$4;->this$0:Lcom/perm/kate/GroupManagementActivity;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p1, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {p4, p5}, Lcom/perm/kate/GroupManagementActivity;->access$702(Lcom/perm/kate/GroupManagementActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 132
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    .line 133
    new-instance p5, Lcom/perm/kate/MenuItemDetails;

    const v0, 0x7f0f029f

    const/4 v1, 0x1

    invoke-direct {p5, v0, v1}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {p4, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    new-instance p5, Lcom/perm/kate/MenuItemDetails;

    const v0, 0x7f0f01ec

    const/4 v2, 0x2

    invoke-direct {p5, v0, v2}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {p4, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    iget-object p1, p1, Lcom/perm/kate/api/User;->role:Ljava/lang/String;

    if-eqz p1, :cond_2

    const-string p5, "creator"

    invoke-virtual {p1, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 136
    new-instance p1, Lcom/perm/kate/MenuItemDetails;

    const p5, 0x7f0f01e9

    const/4 v0, 0x3

    invoke-direct {p1, p5, v0}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {p4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    :cond_2
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object p5, p0, Lcom/perm/kate/GroupManagementActivity$4;->this$0:Lcom/perm/kate/GroupManagementActivity;

    invoke-static {p5}, Lcom/perm/kate/Helper;->getBaseActivity(Landroid/app/Activity;)Landroid/app/Activity;

    move-result-object p5

    invoke-direct {p1, p5}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 138
    invoke-static {p4}, Lcom/perm/kate/MenuItemDetails;->toArray(Ljava/util/ArrayList;)[Ljava/lang/CharSequence;

    move-result-object p5

    new-instance v0, Lcom/perm/kate/GroupManagementActivity$4$1;

    invoke-direct {v0, p0, p4, p2, p3}, Lcom/perm/kate/GroupManagementActivity$4$1;-><init>(Lcom/perm/kate/GroupManagementActivity$4;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p5, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 154
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 155
    invoke-virtual {p1, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 156
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

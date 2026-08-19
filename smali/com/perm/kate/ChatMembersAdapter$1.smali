.class Lcom/perm/kate/ChatMembersAdapter$1;
.super Ljava/lang/Object;
.source "ChatMembersAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/ChatMembersAdapter;


# direct methods
.method constructor <init>(Lcom/perm/kate/ChatMembersAdapter;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/perm/kate/ChatMembersAdapter$1;->this$0:Lcom/perm/kate/ChatMembersAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9

    .line 137
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/Long;

    const v0, 0x7f090008

    .line 138
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    move-object v6, p1

    check-cast v6, Lcom/perm/kate/api/ChatMember;

    .line 140
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 142
    new-instance p1, Lcom/perm/kate/MenuItemDetails;

    const v0, 0x7f0f00ba

    const/4 v7, 0x1

    invoke-direct {p1, v0, v7}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    iget-object p1, p0, Lcom/perm/kate/ChatMembersAdapter$1;->this$0:Lcom/perm/kate/ChatMembersAdapter;

    invoke-static {p1, v6}, Lcom/perm/kate/ChatMembersAdapter;->access$000(Lcom/perm/kate/ChatMembersAdapter;Lcom/perm/kate/api/ChatMember;)Z

    move-result v5

    const/4 p1, 0x2

    if-nez v5, :cond_0

    .line 145
    new-instance v0, Lcom/perm/kate/MenuItemDetails;

    const v1, 0x7f0f0407

    invoke-direct {v0, v1, p1}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 147
    :cond_0
    new-instance v0, Lcom/perm/kate/MenuItemDetails;

    const v1, 0x7f0f00c4

    invoke-direct {v0, v1, p1}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    :goto_0
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/perm/kate/ChatMembersAdapter$1;->this$0:Lcom/perm/kate/ChatMembersAdapter;

    invoke-static {v0}, Lcom/perm/kate/ChatMembersAdapter;->access$300(Lcom/perm/kate/ChatMembersAdapter;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/perm/kate/Helper;->getBaseActivity(Landroid/app/Activity;)Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 149
    invoke-static {v3}, Lcom/perm/kate/MenuItemDetails;->toArray(Ljava/util/ArrayList;)[Ljava/lang/CharSequence;

    move-result-object v0

    new-instance v8, Lcom/perm/kate/ChatMembersAdapter$1$1;

    move-object v1, v8

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/perm/kate/ChatMembersAdapter$1$1;-><init>(Lcom/perm/kate/ChatMembersAdapter$1;Ljava/util/ArrayList;Ljava/lang/Long;ZLcom/perm/kate/api/ChatMember;)V

    invoke-virtual {p1, v0, v8}, Landroidx/appcompat/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 163
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 164
    invoke-virtual {p1, v7}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 165
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

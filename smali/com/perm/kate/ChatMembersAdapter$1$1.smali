.class Lcom/perm/kate/ChatMembersAdapter$1$1;
.super Ljava/lang/Object;
.source "ChatMembersAdapter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$1:Lcom/perm/kate/ChatMembersAdapter$1;

.field final synthetic val$is_admin:Z

.field final synthetic val$member:Lcom/perm/kate/api/ChatMember;

.field final synthetic val$member_id:Ljava/lang/Long;

.field final synthetic val$menuItems:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/perm/kate/ChatMembersAdapter$1;Ljava/util/ArrayList;Ljava/lang/Long;ZLcom/perm/kate/api/ChatMember;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/perm/kate/ChatMembersAdapter$1$1;->this$1:Lcom/perm/kate/ChatMembersAdapter$1;

    iput-object p2, p0, Lcom/perm/kate/ChatMembersAdapter$1$1;->val$menuItems:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/perm/kate/ChatMembersAdapter$1$1;->val$member_id:Ljava/lang/Long;

    iput-boolean p4, p0, Lcom/perm/kate/ChatMembersAdapter$1$1;->val$is_admin:Z

    iput-object p5, p0, Lcom/perm/kate/ChatMembersAdapter$1$1;->val$member:Lcom/perm/kate/api/ChatMember;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 153
    iget-object p1, p0, Lcom/perm/kate/ChatMembersAdapter$1$1;->val$menuItems:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/MenuItemDetails;

    iget p1, p1, Lcom/perm/kate/MenuItemDetails;->code:I

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 158
    :cond_0
    iget-object p1, p0, Lcom/perm/kate/ChatMembersAdapter$1$1;->this$1:Lcom/perm/kate/ChatMembersAdapter$1;

    iget-object p1, p1, Lcom/perm/kate/ChatMembersAdapter$1;->this$0:Lcom/perm/kate/ChatMembersAdapter;

    iget-object v0, p0, Lcom/perm/kate/ChatMembersAdapter$1$1;->val$member_id:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-boolean v2, p0, Lcom/perm/kate/ChatMembersAdapter$1$1;->val$is_admin:Z

    xor-int/2addr p2, v2

    iget-object v2, p0, Lcom/perm/kate/ChatMembersAdapter$1$1;->val$member:Lcom/perm/kate/api/ChatMember;

    invoke-static {p1, v0, v1, p2, v2}, Lcom/perm/kate/ChatMembersAdapter;->access$200(Lcom/perm/kate/ChatMembersAdapter;JZLcom/perm/kate/api/ChatMember;)V

    goto :goto_0

    .line 155
    :cond_1
    iget-object p1, p0, Lcom/perm/kate/ChatMembersAdapter$1$1;->this$1:Lcom/perm/kate/ChatMembersAdapter$1;

    iget-object p1, p1, Lcom/perm/kate/ChatMembersAdapter$1;->this$0:Lcom/perm/kate/ChatMembersAdapter;

    iget-object p2, p0, Lcom/perm/kate/ChatMembersAdapter$1$1;->val$member_id:Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/perm/kate/ChatMembersAdapter;->access$100(Lcom/perm/kate/ChatMembersAdapter;J)V

    :goto_0
    return-void
.end method

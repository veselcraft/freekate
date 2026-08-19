.class Lcom/perm/utils/FriendsListsHelper$5;
.super Ljava/lang/Object;
.source "FriendsListsHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic val$activity:Lcom/perm/kate/BaseActivity;

.field final synthetic val$list_ids:[I

.field final synthetic val$new_checked:[Z

.field final synthetic val$size:I

.field final synthetic val$user_id:Ljava/lang/Long;


# direct methods
.method constructor <init>(I[Z[ILcom/perm/kate/BaseActivity;Ljava/lang/Long;)V
    .locals 0

    .line 146
    iput p1, p0, Lcom/perm/utils/FriendsListsHelper$5;->val$size:I

    iput-object p2, p0, Lcom/perm/utils/FriendsListsHelper$5;->val$new_checked:[Z

    iput-object p3, p0, Lcom/perm/utils/FriendsListsHelper$5;->val$list_ids:[I

    iput-object p4, p0, Lcom/perm/utils/FriendsListsHelper$5;->val$activity:Lcom/perm/kate/BaseActivity;

    iput-object p5, p0, Lcom/perm/utils/FriendsListsHelper$5;->val$user_id:Ljava/lang/Long;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 149
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 p2, 0x0

    .line 150
    :goto_0
    iget v0, p0, Lcom/perm/utils/FriendsListsHelper$5;->val$size:I

    if-ge p2, v0, :cond_1

    .line 151
    iget-object v0, p0, Lcom/perm/utils/FriendsListsHelper$5;->val$new_checked:[Z

    aget-boolean v0, v0, p2

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/perm/utils/FriendsListsHelper$5;->val$list_ids:[I

    aget v0, v0, p2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 154
    :cond_1
    iget-object p2, p0, Lcom/perm/utils/FriendsListsHelper$5;->val$activity:Lcom/perm/kate/BaseActivity;

    iget-object v0, p0, Lcom/perm/utils/FriendsListsHelper$5;->val$user_id:Ljava/lang/Long;

    invoke-static {p2, v0, p1}, Lcom/perm/utils/FriendsListsHelper;->access$100(Lcom/perm/kate/BaseActivity;Ljava/lang/Long;Ljava/util/ArrayList;)V

    return-void
.end method

.class final Lcom/perm/utils/FriendsListsHelper$5;
.super Ljava/lang/Object;
.source "FriendsListsHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/utils/FriendsListsHelper;->showFriendsListsDialog(Lcom/perm/kate/BaseActivity;Ljava/lang/Long;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Lcom/perm/kate/BaseActivity;

.field final synthetic val$list_ids:[I

.field final synthetic val$new_checked:[Z

.field final synthetic val$size:I

.field final synthetic val$user_id:Ljava/lang/Long;


# direct methods
.method constructor <init>(I[Z[ILcom/perm/kate/BaseActivity;Ljava/lang/Long;)V
    .locals 0

    .prologue
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
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 149
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 150
    .local v1, "new_ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/perm/utils/FriendsListsHelper$5;->val$size:I

    if-ge v0, v2, :cond_1

    .line 151
    iget-object v2, p0, Lcom/perm/utils/FriendsListsHelper$5;->val$new_checked:[Z

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_0

    .line 152
    iget-object v2, p0, Lcom/perm/utils/FriendsListsHelper$5;->val$list_ids:[I

    aget v2, v2, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 154
    :cond_1
    iget-object v2, p0, Lcom/perm/utils/FriendsListsHelper$5;->val$activity:Lcom/perm/kate/BaseActivity;

    iget-object v3, p0, Lcom/perm/utils/FriendsListsHelper$5;->val$user_id:Ljava/lang/Long;

    invoke-static {v2, v3, v1}, Lcom/perm/utils/FriendsListsHelper;->access$100(Lcom/perm/kate/BaseActivity;Ljava/lang/Long;Ljava/util/ArrayList;)V

    .line 155
    return-void
.end method

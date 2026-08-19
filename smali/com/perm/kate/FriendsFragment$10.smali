.class Lcom/perm/kate/FriendsFragment$10;
.super Ljava/lang/Object;
.source "FriendsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/FriendsFragment;

.field final synthetic val$city_ids:Ljava/util/ArrayList;

.field final synthetic val$spinner1:Landroid/widget/Spinner;

.field final synthetic val$spinner2:Landroid/widget/Spinner;


# direct methods
.method constructor <init>(Lcom/perm/kate/FriendsFragment;Landroid/widget/Spinner;Landroid/widget/Spinner;Ljava/util/ArrayList;)V
    .locals 0

    .line 499
    iput-object p1, p0, Lcom/perm/kate/FriendsFragment$10;->this$0:Lcom/perm/kate/FriendsFragment;

    iput-object p2, p0, Lcom/perm/kate/FriendsFragment$10;->val$spinner1:Landroid/widget/Spinner;

    iput-object p3, p0, Lcom/perm/kate/FriendsFragment$10;->val$spinner2:Landroid/widget/Spinner;

    iput-object p4, p0, Lcom/perm/kate/FriendsFragment$10;->val$city_ids:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 501
    iget-object p1, p0, Lcom/perm/kate/FriendsFragment$10;->this$0:Lcom/perm/kate/FriendsFragment;

    iget-object p2, p0, Lcom/perm/kate/FriendsFragment$10;->val$spinner1:Landroid/widget/Spinner;

    invoke-virtual {p2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result p2

    iput p2, p1, Lcom/perm/kate/FriendsFragment;->sex_filter:I

    .line 502
    iget-object p1, p0, Lcom/perm/kate/FriendsFragment$10;->val$spinner2:Landroid/widget/Spinner;

    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result p1

    .line 504
    iget-object p2, p0, Lcom/perm/kate/FriendsFragment$10;->this$0:Lcom/perm/kate/FriendsFragment;

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/perm/kate/FriendsFragment$10;->val$city_ids:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_0
    iput-wide v0, p2, Lcom/perm/kate/FriendsFragment;->selected_city:J

    .line 506
    iget-object p1, p0, Lcom/perm/kate/FriendsFragment$10;->this$0:Lcom/perm/kate/FriendsFragment;

    invoke-static {p1}, Lcom/perm/kate/FriendsFragment;->access$1200(Lcom/perm/kate/FriendsFragment;)V

    return-void
.end method

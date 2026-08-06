.class Lcom/perm/kate/FriendsListsActivity$1;
.super Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;
.source "FriendsListsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/FriendsListsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/FriendsListsActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/FriendsListsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/FriendsListsActivity;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/perm/kate/FriendsListsActivity$1;->this$0:Lcom/perm/kate/FriendsListsActivity;

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 80
    iget-object v0, p0, Lcom/perm/kate/FriendsListsActivity$1;->this$0:Lcom/perm/kate/FriendsListsActivity;

    invoke-virtual {v0}, Lcom/perm/kate/FriendsListsActivity;->displayRefreshState()V

    .line 81
    return-void
.end method

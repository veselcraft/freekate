.class Lcom/perm/kate/FriendsListsActivity$1;
.super Landroidx/viewpager/widget/ViewPager$SimpleOnPageChangeListener;
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

    .line 77
    iput-object p1, p0, Lcom/perm/kate/FriendsListsActivity$1;->this$0:Lcom/perm/kate/FriendsListsActivity;

    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager$SimpleOnPageChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .locals 0

    .line 80
    iget-object p1, p0, Lcom/perm/kate/FriendsListsActivity$1;->this$0:Lcom/perm/kate/FriendsListsActivity;

    invoke-virtual {p1}, Lcom/perm/kate/FriendsListsActivity;->displayRefreshState()V

    return-void
.end method

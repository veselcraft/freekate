.class Lcom/perm/kate/FavesActivity$1;
.super Landroidx/viewpager/widget/ViewPager$SimpleOnPageChangeListener;
.source "FavesActivity.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/FavesActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/FavesActivity;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/perm/kate/FavesActivity$1;->this$0:Lcom/perm/kate/FavesActivity;

    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager$SimpleOnPageChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/perm/kate/FavesActivity$1;->this$0:Lcom/perm/kate/FavesActivity;

    iget-object v0, v0, Lcom/perm/kate/FavesActivity;->tabs:Lcom/perm/kate/tabs/TabsInfo;

    invoke-virtual {v0, p1}, Lcom/perm/kate/tabs/TabsInfo;->get(I)Lcom/perm/kate/tabs/TabInfo;

    move-result-object p1

    iget-object p1, p1, Lcom/perm/kate/tabs/TabInfo;->id:Ljava/lang/String;

    .line 87
    iget-object v0, p0, Lcom/perm/kate/FavesActivity$1;->this$0:Lcom/perm/kate/FavesActivity;

    invoke-static {v0, p1}, Lcom/perm/kate/FavesActivity;->access$000(Lcom/perm/kate/FavesActivity;Ljava/lang/String;)V

    .line 88
    iget-object p1, p0, Lcom/perm/kate/FavesActivity$1;->this$0:Lcom/perm/kate/FavesActivity;

    invoke-virtual {p1}, Lcom/perm/kate/FavesActivity;->displayRefreshState()V

    return-void
.end method

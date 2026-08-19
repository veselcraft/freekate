.class Lcom/perm/kate/MainActivity$11;
.super Landroidx/viewpager/widget/ViewPager$SimpleOnPageChangeListener;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/MainActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/MainActivity;)V
    .locals 0

    .line 962
    iput-object p1, p0, Lcom/perm/kate/MainActivity$11;->this$0:Lcom/perm/kate/MainActivity;

    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager$SimpleOnPageChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .locals 1

    .line 966
    iget-object v0, p0, Lcom/perm/kate/MainActivity$11;->this$0:Lcom/perm/kate/MainActivity;

    iget-object v0, v0, Lcom/perm/kate/MainActivity;->tabs:Lcom/perm/kate/tabs/TabsInfo;

    invoke-virtual {v0, p1}, Lcom/perm/kate/tabs/TabsInfo;->get(I)Lcom/perm/kate/tabs/TabInfo;

    move-result-object p1

    iget-object p1, p1, Lcom/perm/kate/tabs/TabInfo;->id:Ljava/lang/String;

    .line 967
    iget-object v0, p0, Lcom/perm/kate/MainActivity$11;->this$0:Lcom/perm/kate/MainActivity;

    invoke-static {v0, p1}, Lcom/perm/kate/MainActivity;->access$800(Lcom/perm/kate/MainActivity;Ljava/lang/String;)V

    .line 968
    iget-object p1, p0, Lcom/perm/kate/MainActivity$11;->this$0:Lcom/perm/kate/MainActivity;

    invoke-virtual {p1}, Lcom/perm/kate/MainActivity;->displayRefreshState()V

    return-void
.end method

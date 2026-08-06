.class Lcom/perm/kate/MainTabletTabsFragment$11;
.super Ljava/lang/Object;
.source "MainTabletTabsFragment.java"

# interfaces
.implements Lcom/perm/kate/Counter$CounterListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/MainTabletTabsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/MainTabletTabsFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/MainTabletTabsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/MainTabletTabsFragment;

    .prologue
    .line 183
    iput-object p1, p0, Lcom/perm/kate/MainTabletTabsFragment$11;->this$0:Lcom/perm/kate/MainTabletTabsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public changed(I)V
    .locals 1
    .param p1, "new_value"    # I

    .prologue
    .line 186
    iget-object v0, p0, Lcom/perm/kate/MainTabletTabsFragment$11;->this$0:Lcom/perm/kate/MainTabletTabsFragment;

    invoke-static {v0, p1}, Lcom/perm/kate/MainTabletTabsFragment;->access$000(Lcom/perm/kate/MainTabletTabsFragment;I)V

    .line 187
    return-void
.end method

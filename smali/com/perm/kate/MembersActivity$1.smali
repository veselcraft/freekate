.class Lcom/perm/kate/MembersActivity$1;
.super Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;
.source "MembersActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/MembersActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/MembersActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/MembersActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/MembersActivity;

    .prologue
    .line 174
    iput-object p1, p0, Lcom/perm/kate/MembersActivity$1;->this$0:Lcom/perm/kate/MembersActivity;

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 177
    iget-object v0, p0, Lcom/perm/kate/MembersActivity$1;->this$0:Lcom/perm/kate/MembersActivity;

    invoke-virtual {v0}, Lcom/perm/kate/MembersActivity;->displayRefreshState()V

    .line 178
    return-void
.end method

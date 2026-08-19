.class Lcom/perm/kate/MembersActivity$1;
.super Landroidx/viewpager/widget/ViewPager$SimpleOnPageChangeListener;
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

    .line 175
    iput-object p1, p0, Lcom/perm/kate/MembersActivity$1;->this$0:Lcom/perm/kate/MembersActivity;

    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager$SimpleOnPageChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .locals 0

    .line 178
    iget-object p1, p0, Lcom/perm/kate/MembersActivity$1;->this$0:Lcom/perm/kate/MembersActivity;

    invoke-virtual {p1}, Lcom/perm/kate/MembersActivity;->displayRefreshState()V

    return-void
.end method

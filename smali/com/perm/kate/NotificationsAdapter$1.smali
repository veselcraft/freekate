.class Lcom/perm/kate/NotificationsAdapter$1;
.super Ljava/lang/Object;
.source "NotificationsAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/NotificationsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/NotificationsAdapter;


# direct methods
.method constructor <init>(Lcom/perm/kate/NotificationsAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/NotificationsAdapter;

    .prologue
    .line 1254
    iput-object p1, p0, Lcom/perm/kate/NotificationsAdapter$1;->this$0:Lcom/perm/kate/NotificationsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1257
    iget-object v0, p0, Lcom/perm/kate/NotificationsAdapter$1;->this$0:Lcom/perm/kate/NotificationsAdapter;

    iget-object v0, v0, Lcom/perm/kate/NotificationsAdapter;->activity:Lcom/perm/kate/BaseActivity;

    invoke-static {p1, v0}, Lcom/perm/kate/NotificationsAdapter;->photoClick(Landroid/view/View;Landroid/app/Activity;)V

    .line 1258
    return-void
.end method

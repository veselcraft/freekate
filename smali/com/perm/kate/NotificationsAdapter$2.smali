.class Lcom/perm/kate/NotificationsAdapter$2;
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
    .line 1272
    iput-object p1, p0, Lcom/perm/kate/NotificationsAdapter$2;->this$0:Lcom/perm/kate/NotificationsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1275
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/perm/kate/NotificationsAdapter$2;->this$0:Lcom/perm/kate/NotificationsAdapter;

    iget-object v1, v1, Lcom/perm/kate/NotificationsAdapter;->activity:Lcom/perm/kate/BaseActivity;

    invoke-static {v0, v1}, Lcom/perm/kate/Helper;->ShowProfile(Ljava/lang/String;Landroid/app/Activity;)V

    .line 1276
    return-void
.end method

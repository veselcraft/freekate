.class Lcom/perm/kate/NotificationsAdapter$2;
.super Ljava/lang/Object;
.source "NotificationsAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/NotificationsAdapter;


# direct methods
.method constructor <init>(Lcom/perm/kate/NotificationsAdapter;)V
    .locals 0

    .line 1306
    iput-object p1, p0, Lcom/perm/kate/NotificationsAdapter$2;->this$0:Lcom/perm/kate/NotificationsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1309
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/perm/kate/NotificationsAdapter$2;->this$0:Lcom/perm/kate/NotificationsAdapter;

    iget-object v0, v0, Lcom/perm/kate/NotificationsAdapter;->activity:Lcom/perm/kate/BaseActivity;

    invoke-static {p1, v0}, Lcom/perm/kate/Helper;->ShowProfile(Ljava/lang/String;Landroid/app/Activity;)V

    return-void
.end method

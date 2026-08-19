.class Lcom/perm/kate/MainActivity$6;
.super Lcom/perm/kate/session/Callback;
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
.method constructor <init>(Lcom/perm/kate/MainActivity;Landroid/app/Activity;)V
    .locals 0

    .line 400
    iput-object p1, p0, Lcom/perm/kate/MainActivity$6;->this$0:Lcom/perm/kate/MainActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 2

    .line 404
    check-cast p1, Lcom/perm/kate/api/Counters;

    .line 405
    sget-object v0, Lcom/perm/kate/KApplication;->newMessageCounter:Lcom/perm/kate/Counter;

    iget v1, p1, Lcom/perm/kate/api/Counters;->messages:I

    invoke-virtual {v0, v1}, Lcom/perm/kate/Counter;->setValue(I)V

    .line 406
    iget v0, p1, Lcom/perm/kate/api/Counters;->friends:I

    if-lez v0, :cond_0

    invoke-static {}, Lcom/perm/kate/MainActivity;->friendsNotificationsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 407
    iget-object v0, p0, Lcom/perm/kate/MainActivity$6;->this$0:Lcom/perm/kate/MainActivity;

    iget v1, p1, Lcom/perm/kate/api/Counters;->friends:I

    invoke-static {v0, v1}, Lcom/perm/kate/MainActivity;->access$200(Lcom/perm/kate/MainActivity;I)V

    .line 408
    :cond_0
    iget v0, p1, Lcom/perm/kate/api/Counters;->notifications:I

    if-lez v0, :cond_1

    invoke-static {}, Lcom/perm/kate/MainActivity;->replesNotificationsEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 409
    iget-object v0, p0, Lcom/perm/kate/MainActivity$6;->this$0:Lcom/perm/kate/MainActivity;

    iget v1, p1, Lcom/perm/kate/api/Counters;->notifications:I

    invoke-static {v0, v1}, Lcom/perm/kate/MainActivity;->access$300(Lcom/perm/kate/MainActivity;I)V

    .line 410
    :cond_1
    iget v0, p1, Lcom/perm/kate/api/Counters;->groups:I

    if-lez v0, :cond_2

    invoke-static {}, Lcom/perm/kate/MainActivity;->groupsInvitesNotificationsEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 411
    iget-object v0, p0, Lcom/perm/kate/MainActivity$6;->this$0:Lcom/perm/kate/MainActivity;

    iget v1, p1, Lcom/perm/kate/api/Counters;->groups:I

    invoke-static {v0, v1}, Lcom/perm/kate/MainActivity;->access$400(Lcom/perm/kate/MainActivity;I)V

    .line 412
    :cond_2
    iget v0, p1, Lcom/perm/kate/api/Counters;->photos:I

    if-lez v0, :cond_3

    invoke-static {}, Lcom/perm/kate/MainActivity;->photoTagNotificationsEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 413
    iget-object v0, p0, Lcom/perm/kate/MainActivity$6;->this$0:Lcom/perm/kate/MainActivity;

    iget p1, p1, Lcom/perm/kate/api/Counters;->photos:I

    invoke-static {v0, p1}, Lcom/perm/kate/MainActivity;->access$500(Lcom/perm/kate/MainActivity;I)V

    :cond_3
    return-void
.end method

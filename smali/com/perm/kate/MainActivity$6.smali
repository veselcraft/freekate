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
    .param p1, "this$0"    # Lcom/perm/kate/MainActivity;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 361
    iput-object p1, p0, Lcom/perm/kate/MainActivity$6;->this$0:Lcom/perm/kate/MainActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 381
    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 3
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 365
    move-object v0, p1

    check-cast v0, Lcom/perm/kate/api/Counters;

    .line 366
    .local v0, "counters":Lcom/perm/kate/api/Counters;
    sget-object v1, Lcom/perm/kate/KApplication;->newMessageCounter:Lcom/perm/kate/Counter;

    iget v2, v0, Lcom/perm/kate/api/Counters;->messages:I

    invoke-virtual {v1, v2}, Lcom/perm/kate/Counter;->setValue(I)V

    .line 367
    iget v1, v0, Lcom/perm/kate/api/Counters;->friends:I

    if-lez v1, :cond_0

    invoke-static {}, Lcom/perm/kate/MainActivity;->friendsNotificationsEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 368
    iget-object v1, p0, Lcom/perm/kate/MainActivity$6;->this$0:Lcom/perm/kate/MainActivity;

    iget v2, v0, Lcom/perm/kate/api/Counters;->friends:I

    invoke-static {v1, v2}, Lcom/perm/kate/MainActivity;->access$400(Lcom/perm/kate/MainActivity;I)V

    .line 369
    :cond_0
    iget v1, v0, Lcom/perm/kate/api/Counters;->notifications:I

    if-lez v1, :cond_1

    invoke-static {}, Lcom/perm/kate/MainActivity;->replesNotificationsEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 370
    iget-object v1, p0, Lcom/perm/kate/MainActivity$6;->this$0:Lcom/perm/kate/MainActivity;

    iget v2, v0, Lcom/perm/kate/api/Counters;->notifications:I

    invoke-static {v1, v2}, Lcom/perm/kate/MainActivity;->access$500(Lcom/perm/kate/MainActivity;I)V

    .line 371
    :cond_1
    iget v1, v0, Lcom/perm/kate/api/Counters;->groups:I

    if-lez v1, :cond_2

    invoke-static {}, Lcom/perm/kate/MainActivity;->groupsInvitesNotificationsEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 372
    iget-object v1, p0, Lcom/perm/kate/MainActivity$6;->this$0:Lcom/perm/kate/MainActivity;

    iget v2, v0, Lcom/perm/kate/api/Counters;->groups:I

    invoke-static {v1, v2}, Lcom/perm/kate/MainActivity;->access$600(Lcom/perm/kate/MainActivity;I)V

    .line 373
    :cond_2
    iget v1, v0, Lcom/perm/kate/api/Counters;->photos:I

    if-lez v1, :cond_3

    invoke-static {}, Lcom/perm/kate/MainActivity;->photoTagNotificationsEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 374
    iget-object v1, p0, Lcom/perm/kate/MainActivity$6;->this$0:Lcom/perm/kate/MainActivity;

    iget v2, v0, Lcom/perm/kate/api/Counters;->photos:I

    invoke-static {v1, v2}, Lcom/perm/kate/MainActivity;->access$700(Lcom/perm/kate/MainActivity;I)V

    .line 375
    :cond_3
    return-void
.end method

.class Lcom/perm/kate/BirthdayService$2;
.super Lcom/perm/kate/session/Callback;
.source "BirthdayService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/BirthdayService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/BirthdayService;


# direct methods
.method constructor <init>(Lcom/perm/kate/BirthdayService;Landroid/app/Activity;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/perm/kate/BirthdayService$2;->this$0:Lcom/perm/kate/BirthdayService;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 2

    .line 133
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 134
    iget-object p1, p0, Lcom/perm/kate/BirthdayService$2;->this$0:Lcom/perm/kate/BirthdayService;

    iget-wide v0, p1, Lcom/perm/kate/BirthdayService;->account_id:J

    invoke-virtual {p1, v0, v1}, Lcom/perm/kate/BirthdayService;->checkBirthdays(J)V

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 3

    .line 126
    iget-object v0, p0, Lcom/perm/kate/BirthdayService$2;->this$0:Lcom/perm/kate/BirthdayService;

    iget-wide v1, v0, Lcom/perm/kate/BirthdayService;->account_id:J

    invoke-static {v0, v1, v2}, Lcom/perm/kate/BirthdayHelper;->updateLastRefresh(Landroid/content/Context;J)V

    .line 127
    check-cast p1, Ljava/util/ArrayList;

    .line 128
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v1, p0, Lcom/perm/kate/BirthdayService$2;->this$0:Lcom/perm/kate/BirthdayService;

    iget-wide v1, v1, Lcom/perm/kate/BirthdayService;->account_id:J

    invoke-virtual {v0, p1, v1, v2}, Lcom/perm/kate/db/DataHelper;->createFriends(Ljava/util/ArrayList;J)V

    .line 129
    iget-object p1, p0, Lcom/perm/kate/BirthdayService$2;->this$0:Lcom/perm/kate/BirthdayService;

    iget-wide v0, p1, Lcom/perm/kate/BirthdayService;->account_id:J

    invoke-virtual {p1, v0, v1}, Lcom/perm/kate/BirthdayService;->checkBirthdays(J)V

    return-void
.end method

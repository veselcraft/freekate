.class Lcom/perm/kate/PublishDateActivity$4$1;
.super Ljava/lang/Object;
.source "PublishDateActivity.java"

# interfaces
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/PublishDateActivity$4;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/perm/kate/PublishDateActivity$4;


# direct methods
.method constructor <init>(Lcom/perm/kate/PublishDateActivity$4;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/perm/kate/PublishDateActivity$4$1;->this$1:Lcom/perm/kate/PublishDateActivity$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeSet(Landroid/widget/TimePicker;II)V
    .locals 2

    .line 144
    iget-object p1, p0, Lcom/perm/kate/PublishDateActivity$4$1;->this$1:Lcom/perm/kate/PublishDateActivity$4;

    iget-object p1, p1, Lcom/perm/kate/PublishDateActivity$4;->this$0:Lcom/perm/kate/PublishDateActivity;

    invoke-static {p1}, Lcom/perm/kate/PublishDateActivity;->access$100(Lcom/perm/kate/PublishDateActivity;)Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/util/Date;->setHours(I)V

    .line 145
    iget-object p1, p0, Lcom/perm/kate/PublishDateActivity$4$1;->this$1:Lcom/perm/kate/PublishDateActivity$4;

    iget-object p1, p1, Lcom/perm/kate/PublishDateActivity$4;->this$0:Lcom/perm/kate/PublishDateActivity;

    invoke-static {p1}, Lcom/perm/kate/PublishDateActivity;->access$100(Lcom/perm/kate/PublishDateActivity;)Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/util/Date;->setMinutes(I)V

    .line 146
    iget-object p1, p0, Lcom/perm/kate/PublishDateActivity$4$1;->this$1:Lcom/perm/kate/PublishDateActivity$4;

    iget-object p1, p1, Lcom/perm/kate/PublishDateActivity$4;->this$0:Lcom/perm/kate/PublishDateActivity;

    invoke-static {p1}, Lcom/perm/kate/PublishDateActivity;->access$100(Lcom/perm/kate/PublishDateActivity;)Ljava/util/Date;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide p2

    const-wide/16 v0, 0x3e8

    div-long/2addr p2, v0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/perm/kate/PublishDateActivity;->access$202(Lcom/perm/kate/PublishDateActivity;Ljava/lang/Long;)Ljava/lang/Long;

    .line 147
    iget-object p1, p0, Lcom/perm/kate/PublishDateActivity$4$1;->this$1:Lcom/perm/kate/PublishDateActivity$4;

    iget-object p1, p1, Lcom/perm/kate/PublishDateActivity$4;->this$0:Lcom/perm/kate/PublishDateActivity;

    invoke-static {p1}, Lcom/perm/kate/PublishDateActivity;->access$300(Lcom/perm/kate/PublishDateActivity;)V

    return-void
.end method

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
    .param p1, "this$1"    # Lcom/perm/kate/PublishDateActivity$4;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/perm/kate/PublishDateActivity$4$1;->this$1:Lcom/perm/kate/PublishDateActivity$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeSet(Landroid/widget/TimePicker;II)V
    .locals 6
    .param p1, "view"    # Landroid/widget/TimePicker;
    .param p2, "hourOfDay"    # I
    .param p3, "minute"    # I

    .prologue
    .line 141
    iget-object v0, p0, Lcom/perm/kate/PublishDateActivity$4$1;->this$1:Lcom/perm/kate/PublishDateActivity$4;

    iget-object v0, v0, Lcom/perm/kate/PublishDateActivity$4;->this$0:Lcom/perm/kate/PublishDateActivity;

    invoke-static {v0}, Lcom/perm/kate/PublishDateActivity;->access$100(Lcom/perm/kate/PublishDateActivity;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/Date;->setHours(I)V

    .line 142
    iget-object v0, p0, Lcom/perm/kate/PublishDateActivity$4$1;->this$1:Lcom/perm/kate/PublishDateActivity$4;

    iget-object v0, v0, Lcom/perm/kate/PublishDateActivity$4;->this$0:Lcom/perm/kate/PublishDateActivity;

    invoke-static {v0}, Lcom/perm/kate/PublishDateActivity;->access$100(Lcom/perm/kate/PublishDateActivity;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/Date;->setMinutes(I)V

    .line 143
    iget-object v0, p0, Lcom/perm/kate/PublishDateActivity$4$1;->this$1:Lcom/perm/kate/PublishDateActivity$4;

    iget-object v0, v0, Lcom/perm/kate/PublishDateActivity$4;->this$0:Lcom/perm/kate/PublishDateActivity;

    iget-object v1, p0, Lcom/perm/kate/PublishDateActivity$4$1;->this$1:Lcom/perm/kate/PublishDateActivity$4;

    iget-object v1, v1, Lcom/perm/kate/PublishDateActivity$4;->this$0:Lcom/perm/kate/PublishDateActivity;

    invoke-static {v1}, Lcom/perm/kate/PublishDateActivity;->access$100(Lcom/perm/kate/PublishDateActivity;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/perm/kate/PublishDateActivity;->access$202(Lcom/perm/kate/PublishDateActivity;Ljava/lang/Long;)Ljava/lang/Long;

    .line 144
    iget-object v0, p0, Lcom/perm/kate/PublishDateActivity$4$1;->this$1:Lcom/perm/kate/PublishDateActivity$4;

    iget-object v0, v0, Lcom/perm/kate/PublishDateActivity$4;->this$0:Lcom/perm/kate/PublishDateActivity;

    invoke-static {v0}, Lcom/perm/kate/PublishDateActivity;->access$300(Lcom/perm/kate/PublishDateActivity;)V

    .line 145
    return-void
.end method

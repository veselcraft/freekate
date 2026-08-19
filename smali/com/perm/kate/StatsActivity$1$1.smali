.class Lcom/perm/kate/StatsActivity$1$1;
.super Ljava/lang/Object;
.source "StatsActivity.java"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/StatsActivity$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/perm/kate/StatsActivity$1;


# direct methods
.method constructor <init>(Lcom/perm/kate/StatsActivity$1;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/perm/kate/StatsActivity$1$1;->this$1:Lcom/perm/kate/StatsActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateSet(Landroid/widget/DatePicker;III)V
    .locals 0

    .line 99
    iget-object p1, p0, Lcom/perm/kate/StatsActivity$1$1;->this$1:Lcom/perm/kate/StatsActivity$1;

    iget-object p1, p1, Lcom/perm/kate/StatsActivity$1;->this$0:Lcom/perm/kate/StatsActivity;

    invoke-static {p1}, Lcom/perm/kate/StatsActivity;->access$000(Lcom/perm/kate/StatsActivity;)Ljava/util/Date;

    move-result-object p1

    add-int/lit16 p2, p2, -0x76c

    invoke-virtual {p1, p2}, Ljava/util/Date;->setYear(I)V

    .line 100
    iget-object p1, p0, Lcom/perm/kate/StatsActivity$1$1;->this$1:Lcom/perm/kate/StatsActivity$1;

    iget-object p1, p1, Lcom/perm/kate/StatsActivity$1;->this$0:Lcom/perm/kate/StatsActivity;

    invoke-static {p1}, Lcom/perm/kate/StatsActivity;->access$000(Lcom/perm/kate/StatsActivity;)Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/util/Date;->setMonth(I)V

    .line 101
    iget-object p1, p0, Lcom/perm/kate/StatsActivity$1$1;->this$1:Lcom/perm/kate/StatsActivity$1;

    iget-object p1, p1, Lcom/perm/kate/StatsActivity$1;->this$0:Lcom/perm/kate/StatsActivity;

    invoke-static {p1}, Lcom/perm/kate/StatsActivity;->access$000(Lcom/perm/kate/StatsActivity;)Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/util/Date;->setDate(I)V

    .line 102
    iget-object p1, p0, Lcom/perm/kate/StatsActivity$1$1;->this$1:Lcom/perm/kate/StatsActivity$1;

    iget-object p1, p1, Lcom/perm/kate/StatsActivity$1;->this$0:Lcom/perm/kate/StatsActivity;

    invoke-static {p1}, Lcom/perm/kate/StatsActivity;->access$100(Lcom/perm/kate/StatsActivity;)V

    .line 103
    iget-object p1, p0, Lcom/perm/kate/StatsActivity$1$1;->this$1:Lcom/perm/kate/StatsActivity$1;

    iget-object p1, p1, Lcom/perm/kate/StatsActivity$1;->this$0:Lcom/perm/kate/StatsActivity;

    invoke-static {p1}, Lcom/perm/kate/StatsActivity;->access$200(Lcom/perm/kate/StatsActivity;)V

    return-void
.end method

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
    .param p1, "this$1"    # Lcom/perm/kate/StatsActivity$1;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/perm/kate/StatsActivity$1$1;->this$1:Lcom/perm/kate/StatsActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateSet(Landroid/widget/DatePicker;III)V
    .locals 2
    .param p1, "view"    # Landroid/widget/DatePicker;
    .param p2, "year"    # I
    .param p3, "monthOfYear"    # I
    .param p4, "dayOfMonth"    # I

    .prologue
    .line 103
    iget-object v0, p0, Lcom/perm/kate/StatsActivity$1$1;->this$1:Lcom/perm/kate/StatsActivity$1;

    iget-object v0, v0, Lcom/perm/kate/StatsActivity$1;->this$0:Lcom/perm/kate/StatsActivity;

    invoke-static {v0}, Lcom/perm/kate/StatsActivity;->access$000(Lcom/perm/kate/StatsActivity;)Ljava/util/Date;

    move-result-object v0

    add-int/lit16 v1, p2, -0x76c

    invoke-virtual {v0, v1}, Ljava/util/Date;->setYear(I)V

    .line 104
    iget-object v0, p0, Lcom/perm/kate/StatsActivity$1$1;->this$1:Lcom/perm/kate/StatsActivity$1;

    iget-object v0, v0, Lcom/perm/kate/StatsActivity$1;->this$0:Lcom/perm/kate/StatsActivity;

    invoke-static {v0}, Lcom/perm/kate/StatsActivity;->access$000(Lcom/perm/kate/StatsActivity;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/Date;->setMonth(I)V

    .line 105
    iget-object v0, p0, Lcom/perm/kate/StatsActivity$1$1;->this$1:Lcom/perm/kate/StatsActivity$1;

    iget-object v0, v0, Lcom/perm/kate/StatsActivity$1;->this$0:Lcom/perm/kate/StatsActivity;

    invoke-static {v0}, Lcom/perm/kate/StatsActivity;->access$000(Lcom/perm/kate/StatsActivity;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/util/Date;->setDate(I)V

    .line 106
    iget-object v0, p0, Lcom/perm/kate/StatsActivity$1$1;->this$1:Lcom/perm/kate/StatsActivity$1;

    iget-object v0, v0, Lcom/perm/kate/StatsActivity$1;->this$0:Lcom/perm/kate/StatsActivity;

    invoke-static {v0}, Lcom/perm/kate/StatsActivity;->access$100(Lcom/perm/kate/StatsActivity;)V

    .line 107
    iget-object v0, p0, Lcom/perm/kate/StatsActivity$1$1;->this$1:Lcom/perm/kate/StatsActivity$1;

    iget-object v0, v0, Lcom/perm/kate/StatsActivity$1;->this$0:Lcom/perm/kate/StatsActivity;

    invoke-static {v0}, Lcom/perm/kate/StatsActivity;->access$200(Lcom/perm/kate/StatsActivity;)V

    .line 108
    iget-object v0, p0, Lcom/perm/kate/StatsActivity$1$1;->this$1:Lcom/perm/kate/StatsActivity$1;

    iget-object v0, v0, Lcom/perm/kate/StatsActivity$1;->this$0:Lcom/perm/kate/StatsActivity;

    invoke-static {v0}, Lcom/perm/kate/StatsActivity;->access$300(Lcom/perm/kate/StatsActivity;)V

    .line 109
    return-void
.end method

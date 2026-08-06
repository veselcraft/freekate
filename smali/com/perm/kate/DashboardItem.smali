.class Lcom/perm/kate/DashboardItem;
.super Ljava/lang/Object;
.source "DashboardItems.java"


# instance fields
.field id:I

.field img:Ljava/lang/String;

.field title:Ljava/lang/String;

.field type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "id"    # I
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "img"    # Ljava/lang/String;

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput p1, p0, Lcom/perm/kate/DashboardItem;->type:I

    .line 80
    iput p2, p0, Lcom/perm/kate/DashboardItem;->id:I

    .line 81
    iput-object p3, p0, Lcom/perm/kate/DashboardItem;->title:Ljava/lang/String;

    .line 82
    iput-object p4, p0, Lcom/perm/kate/DashboardItem;->img:Ljava/lang/String;

    .line 83
    return-void
.end method

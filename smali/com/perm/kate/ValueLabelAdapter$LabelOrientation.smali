.class public final enum Lcom/perm/kate/ValueLabelAdapter$LabelOrientation;
.super Ljava/lang/Enum;
.source "ValueLabelAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/ValueLabelAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LabelOrientation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/perm/kate/ValueLabelAdapter$LabelOrientation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/perm/kate/ValueLabelAdapter$LabelOrientation;

.field public static final enum HORIZONTAL:Lcom/perm/kate/ValueLabelAdapter$LabelOrientation;

.field public static final enum VERTICAL:Lcom/perm/kate/ValueLabelAdapter$LabelOrientation;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 16
    new-instance v0, Lcom/perm/kate/ValueLabelAdapter$LabelOrientation;

    const-string v1, "HORIZONTAL"

    invoke-direct {v0, v1, v2}, Lcom/perm/kate/ValueLabelAdapter$LabelOrientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/perm/kate/ValueLabelAdapter$LabelOrientation;->HORIZONTAL:Lcom/perm/kate/ValueLabelAdapter$LabelOrientation;

    new-instance v0, Lcom/perm/kate/ValueLabelAdapter$LabelOrientation;

    const-string v1, "VERTICAL"

    invoke-direct {v0, v1, v3}, Lcom/perm/kate/ValueLabelAdapter$LabelOrientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/perm/kate/ValueLabelAdapter$LabelOrientation;->VERTICAL:Lcom/perm/kate/ValueLabelAdapter$LabelOrientation;

    .line 15
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/perm/kate/ValueLabelAdapter$LabelOrientation;

    sget-object v1, Lcom/perm/kate/ValueLabelAdapter$LabelOrientation;->HORIZONTAL:Lcom/perm/kate/ValueLabelAdapter$LabelOrientation;

    aput-object v1, v0, v2

    sget-object v1, Lcom/perm/kate/ValueLabelAdapter$LabelOrientation;->VERTICAL:Lcom/perm/kate/ValueLabelAdapter$LabelOrientation;

    aput-object v1, v0, v3

    sput-object v0, Lcom/perm/kate/ValueLabelAdapter$LabelOrientation;->$VALUES:[Lcom/perm/kate/ValueLabelAdapter$LabelOrientation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/perm/kate/ValueLabelAdapter$LabelOrientation;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 15
    const-class v0, Lcom/perm/kate/ValueLabelAdapter$LabelOrientation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/ValueLabelAdapter$LabelOrientation;

    return-object v0
.end method

.method public static values()[Lcom/perm/kate/ValueLabelAdapter$LabelOrientation;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/perm/kate/ValueLabelAdapter$LabelOrientation;->$VALUES:[Lcom/perm/kate/ValueLabelAdapter$LabelOrientation;

    invoke-virtual {v0}, [Lcom/perm/kate/ValueLabelAdapter$LabelOrientation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/perm/kate/ValueLabelAdapter$LabelOrientation;

    return-object v0
.end method

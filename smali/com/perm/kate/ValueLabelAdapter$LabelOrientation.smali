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
        "Ljava/lang/Enum<",
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
    .locals 5

    .line 16
    new-instance v0, Lcom/perm/kate/ValueLabelAdapter$LabelOrientation;

    const-string v1, "HORIZONTAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/perm/kate/ValueLabelAdapter$LabelOrientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/perm/kate/ValueLabelAdapter$LabelOrientation;->HORIZONTAL:Lcom/perm/kate/ValueLabelAdapter$LabelOrientation;

    new-instance v1, Lcom/perm/kate/ValueLabelAdapter$LabelOrientation;

    const-string v3, "VERTICAL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/perm/kate/ValueLabelAdapter$LabelOrientation;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/perm/kate/ValueLabelAdapter$LabelOrientation;->VERTICAL:Lcom/perm/kate/ValueLabelAdapter$LabelOrientation;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/perm/kate/ValueLabelAdapter$LabelOrientation;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 15
    sput-object v3, Lcom/perm/kate/ValueLabelAdapter$LabelOrientation;->$VALUES:[Lcom/perm/kate/ValueLabelAdapter$LabelOrientation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/perm/kate/ValueLabelAdapter$LabelOrientation;
    .locals 1

    .line 15
    const-class v0, Lcom/perm/kate/ValueLabelAdapter$LabelOrientation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/perm/kate/ValueLabelAdapter$LabelOrientation;

    return-object p0
.end method

.method public static values()[Lcom/perm/kate/ValueLabelAdapter$LabelOrientation;
    .locals 1

    .line 15
    sget-object v0, Lcom/perm/kate/ValueLabelAdapter$LabelOrientation;->$VALUES:[Lcom/perm/kate/ValueLabelAdapter$LabelOrientation;

    invoke-virtual {v0}, [Lcom/perm/kate/ValueLabelAdapter$LabelOrientation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/perm/kate/ValueLabelAdapter$LabelOrientation;

    return-object v0
.end method

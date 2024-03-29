.class public Lcom/oneplus/lib/app/appcompat/TwilightCalculator;
.super Ljava/lang/Object;
.source "TwilightCalculator.java"


# static fields
.field private static final ALTIDUTE_CORRECTION_CIVIL_TWILIGHT:F = -0.10471976f

.field private static final C1:F = 0.0334196f

.field private static final C2:F = 3.49066E-4f

.field private static final C3:F = 5.236E-6f

.field public static final DAY:I = 0x0

.field private static final DEGREES_TO_RADIANS:F = 0.017453292f

.field private static final J0:F = 9.0E-4f

.field public static final NIGHT:I = 0x1

.field private static final OBLIQUITY:F = 0.4092797f

.field private static final UTC_2000:J = 0xdc6d62da00L

.field private static sInstance:Lcom/oneplus/lib/app/appcompat/TwilightCalculator;


# instance fields
.field public state:I

.field public sunrise:J

.field public sunset:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getInstance()Lcom/oneplus/lib/app/appcompat/TwilightCalculator;
    .locals 1

    sget-object v0, Lcom/oneplus/lib/app/appcompat/TwilightCalculator;->sInstance:Lcom/oneplus/lib/app/appcompat/TwilightCalculator;

    if-nez v0, :cond_0

    new-instance v0, Lcom/oneplus/lib/app/appcompat/TwilightCalculator;

    invoke-direct {v0}, Lcom/oneplus/lib/app/appcompat/TwilightCalculator;-><init>()V

    sput-object v0, Lcom/oneplus/lib/app/appcompat/TwilightCalculator;->sInstance:Lcom/oneplus/lib/app/appcompat/TwilightCalculator;

    :cond_0
    sget-object v0, Lcom/oneplus/lib/app/appcompat/TwilightCalculator;->sInstance:Lcom/oneplus/lib/app/appcompat/TwilightCalculator;

    return-object v0
.end method


# virtual methods
.method public calculateTwilight(JDD)V
    .locals 33

    move-object/from16 v0, p0

    const-wide v1, 0xdc6d62da00L

    sub-long v3, p1, v1

    long-to-float v3, v3

    const v4, 0x4ca4cb80    # 8.64E7f

    div-float/2addr v3, v4

    const v4, 0x3c8ceb25

    mul-float/2addr v4, v3

    const v5, 0x40c7ae92

    add-float/2addr v5, v4

    float-to-double v6, v5

    float-to-double v8, v5

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    const-wide v10, 0x3fa11c5fc0000000L    # 0.03341960161924362

    mul-double/2addr v10, v8

    add-double/2addr v6, v10

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v4, v5

    float-to-double v8, v4

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    const-wide v10, 0x3f36e05b00000000L    # 3.4906598739326E-4

    mul-double/2addr v10, v8

    add-double/2addr v6, v10

    const/high16 v4, 0x40400000    # 3.0f

    mul-float/2addr v4, v5

    float-to-double v8, v4

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    const-wide v10, 0x3ed5f61cc0000000L    # 5.236000106378924E-6

    mul-double/2addr v10, v8

    add-double/2addr v6, v10

    const-wide v8, 0x3ffcbed85e1ce332L    # 1.796593063

    add-double/2addr v8, v6

    const-wide v10, 0x400921fb54442d18L    # Math.PI

    add-double/2addr v8, v10

    move-wide/from16 v10, p5

    neg-double v12, v10

    const-wide v14, 0x4076800000000000L    # 360.0

    div-double/2addr v12, v14

    const v4, 0x3a6bedfa    # 9.0E-4f

    sub-float v1, v3, v4

    float-to-double v1, v1

    sub-double/2addr v1, v12

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    long-to-float v1, v1

    add-float/2addr v4, v1

    move/from16 v18, v1

    float-to-double v1, v4

    add-double/2addr v1, v12

    move/from16 v19, v3

    float-to-double v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    const-wide v14, 0x3f75b573eab367a1L    # 0.0053

    mul-double/2addr v14, v3

    add-double/2addr v1, v14

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    mul-double/2addr v3, v8

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    const-wide v14, -0x4083bcd35a858794L    # -0.0069

    mul-double/2addr v14, v3

    add-double/2addr v1, v14

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    move/from16 v20, v5

    move-wide/from16 v21, v6

    const-wide v5, 0x3fda31a380000000L    # 0.4092797040939331

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    mul-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->asin(D)D

    move-result-wide v3

    const-wide v5, 0x3f91df46a0000000L    # 0.01745329238474369

    mul-double v5, v5, p3

    move-wide/from16 v23, v8

    const-wide v7, -0x4045311600000000L    # -0.10471975803375244

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v25

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v27

    mul-double v25, v25, v27

    sub-double v7, v7, v25

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v25

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v27

    mul-double v25, v25, v27

    div-double v7, v7, v25

    const-wide/high16 v25, 0x3ff0000000000000L    # 1.0

    cmpl-double v9, v7, v25

    move-wide/from16 v29, v3

    const-wide/16 v3, -0x1

    if-ltz v9, :cond_0

    const/4 v9, 0x1

    iput v9, v0, Lcom/oneplus/lib/app/appcompat/TwilightCalculator;->state:I

    iput-wide v3, v0, Lcom/oneplus/lib/app/appcompat/TwilightCalculator;->sunset:J

    iput-wide v3, v0, Lcom/oneplus/lib/app/appcompat/TwilightCalculator;->sunrise:J

    return-void

    :cond_0
    const-wide/high16 v25, -0x4010000000000000L    # -1.0

    cmpg-double v9, v7, v25

    const/4 v3, 0x0

    if-gtz v9, :cond_1

    iput v3, v0, Lcom/oneplus/lib/app/appcompat/TwilightCalculator;->state:I

    const-wide/16 v3, -0x1

    iput-wide v3, v0, Lcom/oneplus/lib/app/appcompat/TwilightCalculator;->sunset:J

    iput-wide v3, v0, Lcom/oneplus/lib/app/appcompat/TwilightCalculator;->sunrise:J

    return-void

    :cond_1
    invoke-static {v7, v8}, Ljava/lang/Math;->acos(D)D

    move-result-wide v25

    const-wide v27, 0x401921fb54442d18L    # 6.283185307179586

    div-double v3, v25, v27

    double-to-float v3, v3

    move-wide/from16 v31, v5

    float-to-double v4, v3

    add-double/2addr v4, v1

    const-wide v25, 0x4194997000000000L    # 8.64E7

    mul-double v4, v4, v25

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    const-wide v16, 0xdc6d62da00L

    add-long v4, v4, v16

    iput-wide v4, v0, Lcom/oneplus/lib/app/appcompat/TwilightCalculator;->sunset:J

    float-to-double v4, v3

    sub-double v4, v1, v4

    mul-double v4, v4, v25

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    add-long v4, v4, v16

    iput-wide v4, v0, Lcom/oneplus/lib/app/appcompat/TwilightCalculator;->sunrise:J

    iget-wide v4, v0, Lcom/oneplus/lib/app/appcompat/TwilightCalculator;->sunrise:J

    cmp-long v4, v4, p1

    if-gez v4, :cond_2

    iget-wide v4, v0, Lcom/oneplus/lib/app/appcompat/TwilightCalculator;->sunset:J

    cmp-long v4, v4, p1

    if-lez v4, :cond_2

    const/4 v4, 0x0

    iput v4, v0, Lcom/oneplus/lib/app/appcompat/TwilightCalculator;->state:I

    goto :goto_0

    :cond_2
    const/4 v4, 0x1

    iput v4, v0, Lcom/oneplus/lib/app/appcompat/TwilightCalculator;->state:I

    :goto_0
    return-void
.end method
